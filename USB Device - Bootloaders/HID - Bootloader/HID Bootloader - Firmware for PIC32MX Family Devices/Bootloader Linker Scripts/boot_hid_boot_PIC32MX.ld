/* 
 * Modified linker script for the HID boot loader.  This linker file is
 * designed for linking the boot loader project itself and not the 
 * applications that will be loaded by this boot loader.  Please use
 * one of the app_hid_boot_xxx.ld files with applications that should
 * be loaded by this bootloader
 */
OUTPUT_FORMAT("elf32-tradlittlemips")
OUTPUT_ARCH(pic32mx)
ENTRY(_reset)
/*
 * Provide for a minimum stack and heap size
 * - _min_stack_size - represents the minimum space that must be made
 *                     available for the stack.  Can be overridden from
 *                     the command line using the linker's --defsym option.
 * - _min_heap_size  - represents the minimum space that must be made
 *                     available for the heap.  Can be overridden from
 *                     the command line using the linker's --defsym option.
 */
EXTERN (_min_stack_size _min_heap_size)
PROVIDE(_min_stack_size = 0x400) ;
PROVIDE(_min_heap_size = 0) ;

/*************************************************************************
 * Processor-specific object file.  Contains SFR definitions.
 *************************************************************************/
INPUT("processor.o")

/*************************************************************************
 * For interrupt vector handling
 *************************************************************************/
PROVIDE(_vector_spacing = 0x00000001);
_ebase_address  = 0xBFC00000;

/*************************************************************************
 * Memory Address Equates
 *************************************************************************/
_RESET_ADDR              = 0xBFC00000;
_BEV_EXCPT_ADDR          = 0xBFC00380;
_DBG_EXCPT_ADDR          = 0xBFC00480;
_DBG_CODE_ADDR           = 0x9D004000;
_GEN_EXCPT_ADDR          = _ebase_address + 0x180;

/*************************************************************************
 * Memory Regions
 *
 * Memory regions without attributes cannot be used for orphaned sections.
 * Only sections specifically assigned to these regions can be allocated
 * into these regions.
 *************************************************************************/
MEMORY
{
  kseg0_program_mem    (rx)  : ORIGIN = 0x9D000000, LENGTH = 0x3000
  kseg0_boot_mem             : ORIGIN = 0x9FC00490, LENGTH = 0x1F0
  exception_mem              : ORIGIN = 0x9FC00680, LENGTH = 0x0
  kseg1_boot_mem             : ORIGIN = 0xBFC00000, LENGTH = 0x490
  debug_exec_mem             : ORIGIN = 0x9D004000, LENGTH = 0xFF0 
  config3                    : ORIGIN = 0xBFC02FF0, LENGTH = 0x4
  config2                    : ORIGIN = 0xBFC02FF4, LENGTH = 0x4
  config1                    : ORIGIN = 0xBFC02FF8, LENGTH = 0x4
  config0                    : ORIGIN = 0xBFC02FFC, LENGTH = 0x4
  kseg1_data_mem       (w!x) : ORIGIN = 0xA0000000, LENGTH = 0x8000
  sfrs                       : ORIGIN = 0xBF800000, LENGTH = 0x100000
  configsfrs                 : ORIGIN = 0xBFC02FF0, LENGTH = 0x10
}
SECTIONS
{
  .config_BFC02FF0 : {
    KEEP(*(.config_BFC02FF0))
  } > config3
  .config_BFC02FF4 : {
    KEEP(*(.config_BFC02FF4))
  } > config2
  .config_BFC02FF8 : {
    KEEP(*(.config_BFC02FF8))
  } > config1
  .config_BFC02FFC : {
    KEEP(*(.config_BFC02FFC))
  } > config0
}

SECTIONS
{
  /* Boot Sections */
  .reset _RESET_ADDR :
  {
    KEEP(*(.reset))
  } > kseg1_boot_mem
  .bev_excpt _BEV_EXCPT_ADDR :
  {
    KEEP(*(.bev_handler))
  } > kseg1_boot_mem
  .dbg_excpt _DBG_EXCPT_ADDR (NOLOAD) :
  {
    . += (DEFINED (_DEBUGGER) ? 0x8 : 0x0);
  } > kseg1_boot_mem
  .dbg_code _DBG_CODE_ADDR (NOLOAD) :
  {
    . += (DEFINED (_DEBUGGER) ? 0xFF0 : 0x0);
  } > debug_exec_mem

  .startup ORIGIN(kseg0_boot_mem) :
  {
    KEEP(*(.startup))
  } > kseg0_boot_mem
  /* Code Sections */
  .text ORIGIN(kseg0_program_mem)  :
  {
    _text_begin = . ;
    *(.text .stub .text.* .gnu.linkonce.t.*)
    KEEP (*(.text.*personality*))
    /* .gnu.warning sections are handled specially by elf32.em.  */
    *(.gnu.warning)
    *(.mips16.fn.*)
    *(.mips16.call.*)
    _text_end = . ;
  } >kseg0_program_mem =0
  /* Read-only sections */
  .rodata   :
  {
    *(.rodata .rodata.* .gnu.linkonce.r.*)
    *(.rodata1)
    . = ALIGN(4) ;
  } >kseg0_program_mem
  /*
   * Small initialized constant global and static data can be placed in the
   * .sdata2 section.  This is different from .sdata, which contains small
   * initialized non-constant global and static data.
   */
  .sdata2 ALIGN(4)   :
  {
    *(.sdata2 .sdata2.* .gnu.linkonce.s2.*)
    . = ALIGN(4) ;
  } >kseg0_program_mem
  /*
   * Uninitialized constant global and static data (i.e., variables which will
   * always be zero).  Again, this is different from .sbss, which contains
   * small non-initialized, non-constant global and static data.
   */
  .sbss2 ALIGN(4)   :
  {
    *(.sbss2 .sbss2.* .gnu.linkonce.sb2.*)
    . = ALIGN(4) ;
  } >kseg0_program_mem
  .eh_frame_hdr : { *(.eh_frame_hdr) }
  .eh_frame       : ONLY_IF_RO { KEEP (*(.eh_frame)) }
  .dbg_data (NOLOAD) :
  {
    . += (DEFINED (_DEBUGGER) ? 0x200 : 0x0);
  } >kseg1_data_mem
  /* Persistent data */
  .persist :
  {
    _persist_begin = .;
    *(.persist .persist.*)
    _persist_end = .;
  } >kseg1_data_mem
  .data   :
  {
    _data_begin = . ;
    *(.data .data.* .gnu.linkonce.d.*)
    KEEP (*(.gnu.linkonce.d.*personality*))
    *(.data1)
  } >kseg1_data_mem AT>kseg0_program_mem
  _data_image_begin = LOADADDR(.data) ;
  .eh_frame       : ONLY_IF_RW { KEEP (*(.eh_frame)) }
  . = .;
  _gp = ALIGN(16) + 0x7ff0;
  .got ALIGN(4)   :
  {
     *(.got.plt) *(.got)
  } >kseg1_data_mem AT>kseg0_program_mem
  /*
   * We want the small data sections together, so single-instruction offsets
   * can access them all, and initialized data all before uninitialized, so
   * we can shorten the on-disk segment size.
   */
  .sdata ALIGN(4)   :
  {
    _sdata_begin = . ;
    *(.sdata .sdata.* .gnu.linkonce.s.*)
    _sdata_end = . ;
  } >kseg1_data_mem AT>kseg0_program_mem
  .lit8           :
  {
    *(.lit8)
  } >kseg1_data_mem AT>kseg0_program_mem
  .lit4           :
  {
    *(.lit4)
  } >kseg1_data_mem AT>kseg0_program_mem
  . = ALIGN (4) ;
  _data_end = . ;
  _bss_begin = . ;
  .sbss ALIGN(4)   :
  {
    _sbss_begin = . ;
    *(.dynsbss)
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)
    _sbss_end = . ;
  } >kseg1_data_mem
  .bss   :
  {
    *(.dynbss)
    *(.bss .bss.* .gnu.linkonce.b.*)
    *(COMMON)
    /*
     * Align here to ensure that the .bss section occupies space up to
     * _end.  Align after .bss to ensure correct alignment even if the
     * .bss section disappears because there are no input sections.
     */
    . = ALIGN(4) ;
  } >kseg1_data_mem
  . = ALIGN(4) ;
  _end = . ;
  _bss_end = . ;
  /* Heap allocating takes a chunk of memory following BSS */
  .heap ALIGN(8) :
  {
    _heap = . ;
    . += _min_heap_size ;
    . = ALIGN(8);
  } >kseg1_data_mem
  /* Stack allocation follows the heap */
  .stack ALIGN(8) :
  {
    _splim = . ;
    _SPLIM = . ;
    . += _min_stack_size ;
    . = ALIGN(8);
  } >kseg1_data_mem
  /*
   * RAM functions go at the end of our stack and heap allocation.
   * Alignment of 2K required by the boundary register (BMXDKPBA).
   */
  .ramfunc ALIGN(2K) :
  {
    _ramfunc_begin = . ;
    *(.ramfunc  .ramfunc.*)
    . = ALIGN(4) ;
    _ramfunc_end = . ;
  } >kseg1_data_mem AT>kseg0_program_mem
  _ramfunc_image_begin = LOADADDR(.ramfunc) ;
  _ramfunc_length = SIZEOF(.ramfunc) ;
  _bmxdkpba_address = _ramfunc_begin - ORIGIN(kseg1_data_mem) ;
  _bmxdudba_address = LENGTH(kseg1_data_mem) ;
  _bmxdupba_address = LENGTH(kseg1_data_mem) ;
  /*
   * The actual top of stack should include the gap between the stack
   * section and the beginning of the .ramfunc section caused by the
   * alignment of the .ramfunc section minus 1 word.  If RAM functions
   * do not exist, then the top of the stack should point to the end of
   * the data memory.
   */
  _stack = (_ramfunc_length > 0)
         ? _ramfunc_begin - 4
         : ORIGIN(kseg1_data_mem) + LENGTH(kseg1_data_mem) ;
  ASSERT((_min_stack_size + _min_heap_size) <= (_stack - _heap),
    "Not enough space to allocate both stack and heap.  Reduce heap and/or stack size.")
    /* The .pdr section belongs in the absolute section */
    /DISCARD/ : { *(.pdr) }
    /* We don't load .reginfo onto the target, so don't locate it
     * in real memory
     */
    /DISCARD/ : { *(.reginfo) }
  /* Stabs debugging sections.  */
  .stab          0 : { *(.stab) }
  .stabstr       0 : { *(.stabstr) }
  .stab.excl     0 : { *(.stab.excl) }
  .stab.exclstr  0 : { *(.stab.exclstr) }
  .stab.index    0 : { *(.stab.index) }
  .stab.indexstr 0 : { *(.stab.indexstr) }
  .comment       0 : { *(.comment) }
  /* DWARF debug sections.
     Symbols in the DWARF debugging sections are relative to the beginning
     of the section so we begin them at 0.  */
  /* DWARF 1 */
  .debug          0 : { *(.debug) }
  .line           0 : { *(.line) }
  /* GNU DWARF 1 extensions */
  .debug_srcinfo  0 : { *(.debug_srcinfo) }
  .debug_sfnames  0 : { *(.debug_sfnames) }
  /* DWARF 1.1 and DWARF 2 */
  .debug_aranges  0 : { *(.debug_aranges) }
  .debug_pubnames 0 : { *(.debug_pubnames) }
  /* DWARF 2 */
  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
  .debug_abbrev   0 : { *(.debug_abbrev) }
  .debug_line     0 : { *(.debug_line) }
  .debug_frame    0 : { *(.debug_frame) }
  .debug_str      0 : { *(.debug_str) }
  .debug_loc      0 : { *(.debug_loc) }
  .debug_macinfo  0 : { *(.debug_macinfo) }
  /* SGI/MIPS DWARF 2 extensions */
  .debug_weaknames 0 : { *(.debug_weaknames) }
  .debug_funcnames 0 : { *(.debug_funcnames) }
  .debug_typenames 0 : { *(.debug_typenames) }
  .debug_varnames  0 : { *(.debug_varnames) }
  /DISCARD/ : { *(.rel.dyn) }
  /DISCARD/ : { *(.note.GNU-stack) }
}

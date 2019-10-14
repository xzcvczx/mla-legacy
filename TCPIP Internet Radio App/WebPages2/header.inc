<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 STRICT//EN" "DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Microchip Internet Radio App</title>
<link href="/mchp.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="/FolderMusic.PNG" />

<script type="text/javascript">

var xmlDoc;
// code for IE
if (window.ActiveXObject)
{
   xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
}
// code for Mozilla, Firefox, Opera, etc.
else if (document.implementation.createDocument)
{
   xmlDoc=document.implementation.createDocument("","",null);
}
else
{
   alert('Your browser cannot handle this script.');
}

xmlDoc.async=false;

function UpdateInfo()
{
   xmlDoc.load("status.xml");
   var response = xmlDoc.getElementsByTagName("response");
   document.getElementById("string0").innerHTML = response[0].getElementsByTagName("string")[0].childNodes[0].nodeValue;
   document.getElementById("string1").innerHTML = response[0].getElementsByTagName("string")[1].childNodes[0].nodeValue;
   document.getElementById("string2").innerHTML = response[0].getElementsByTagName("string")[2].childNodes[0].nodeValue;
   document.getElementById("string3").innerHTML = response[0].getElementsByTagName("string")[3].childNodes[0].nodeValue;
   document.getElementById("string4").innerHTML = response[0].getElementsByTagName("string")[4].childNodes[0].nodeValue;

   setTimeout("UpdateInfo()",1500);
}

</script>

</head>

<body onLoad="UpdateInfo()">
<div id="shadow-one"><div id="shadow-two"><div id="shadow-three"><div id="shadow-four">
<div id="page">

<div style="padding:0 0 5px 5px"><img src="/mchp.gif"></div>

<div id="title"><div class="right">Internet Radio Demo Application</div></div>

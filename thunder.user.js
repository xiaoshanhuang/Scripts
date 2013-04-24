var x=document.getElementsByTagName("a"); 
var thunder = ""; 
for(var i=0; i<x.length; i++)
{
	if(x[i].hasAttribute("thunderhref"))
	{
		if(x[i].getAttribute("thunderrestitle").indexOf('HR-HDTV')>0)
		thunder += x[i].getAttribute("thunderrestitle") + '</br>' + x[i].getAttribute("thunderhref") + '</br>';
	}
}
document.body.innerHTML = thunder;
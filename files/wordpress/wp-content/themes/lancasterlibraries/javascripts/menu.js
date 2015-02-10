<!--
function P7_autoLayers() { 
 var g,b,k,f,u,k,j,args=P7_autoLayers.arguments,a=parseInt(args[0]);if(isNaN(a))a=0;
 if(!document.p7setc){p7c=new Array();document.p7setc=true;for(u=0;u<10;u++){
 p7c[u]=new Array();}}for(k=0;k<p7c[a].length;k++){if((g=MM_findObj(p7c[a][k]))!=null){
 b=(document.layers)?g:g.style;b.visibility="hidden";}}for(k=1;k<args.length;k++){
 if((g=MM_findObj(args[k]))!=null){b=(document.layers)?g:g.style;b.visibility="visible";f=false;
 for(j=0;j<p7c[a].length;j++){if(args[k]==p7c[a][j]) {f=true;}}
 if(!f){p7c[a][p7c[a].length++]=args[k];}}}
}

function P7_hideEl(evt) { 
 var b,r,m=false;if(document.layers){b=evt.target;if(b.p7aHide){
 b.visibility="hidden";}else{routeEvent(evt);}
 }else if(document.all&&!window.opera){b=event.srcElement;while(b){
 if(b.p7aHide){break;}b=b.parentElement;}if(!b.contains(event.toElement)){
 b.style.visibility="hidden";}}else if(document.getElementById){
 b=evt.currentTarget;r=evt.relatedTarget;while(r){if(b==r){m=true;
 break;}r=r.parentNode;}if(!m){b.style.visibility="hidden";}}
}

function P7_autoHide() { 
 var i,g;for(i=0;i<arguments.length;i++){
 if((g=MM_findObj(arguments[i]))!=null){g.p7aHide=true;if(document.layers){
 g.captureEvents(Event.MOUSEOUT);}g.onmouseout=P7_hideEl;}}
}
-->



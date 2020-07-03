//取得ID
function getId(x,y){
	return "r" + x + "c" + y;
}
//取得和设置id的className值
function getName(id){
	return document.getElementById(id).className;
}
function setName(id,value){
	document.getElementById(id).className=value;
}
//取得和设置id的innerHTML值
function getHTML(id){
	return document.getElementById(id).innerHTML;
}
function setHTML(id,value){
	document.getElementById(id).innerHTML=value;
}
//取得和设置id的value值
function getValue(id){
	return document.getElementById(id).value;
}
function setValue(id,value){
	document.getElementById(id).value=value;
}
//取得随机数
function getRnd(n){
	return Math.floor(Math.random()*n)+1;
}
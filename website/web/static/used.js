//ȡ��ID
function getId(x,y){
	return "r" + x + "c" + y;
}
//ȡ�ú�����id��classNameֵ
function getName(id){
	return document.getElementById(id).className;
}
function setName(id,value){
	document.getElementById(id).className=value;
}
//ȡ�ú�����id��innerHTMLֵ
function getHTML(id){
	return document.getElementById(id).innerHTML;
}
function setHTML(id,value){
	document.getElementById(id).innerHTML=value;
}
//ȡ�ú�����id��valueֵ
function getValue(id){
	return document.getElementById(id).value;
}
function setValue(id,value){
	document.getElementById(id).value=value;
}
//ȡ�������
function getRnd(n){
	return Math.floor(Math.random()*n)+1;
}
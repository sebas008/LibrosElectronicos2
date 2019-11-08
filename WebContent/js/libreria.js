/*funciones de la pagina1.html*/
function ciudad1(){
		document.getElementById("titulo").innerText="Machu Picchu";
		document.getElementById("imgmar").src="../imagenes/MP.jpg";
}

function ciudad2(){
	var c=document.getElementById("titulo");
	c.style.fontStyle="italic";
	c.style.color="red";
	c.innerText="Ciudad de Caral";
	document.getElementById("imgmar").src="../imagenes/caral.jpg";
}

function ciudad3(){
	var c=document.getElementById("titulo");
	c.style.fontStyle="italic";
	c.style.color="red";
	c.innerText="Ciudadela de Kuelap";

	var fig=document.getElementById("imgmar");
	fig.src="../imagenes/kuelap.jpg";
	fig.width="80%";
	fig.style.marginLeft="10%";
	fig.style.border="2px solid";
}

/*funciones para la pagina indice.html*/

function over(n){
	//capturar la imagen del article el cual se llama ruina
	var obj=document.getElementsByClassName("ruina").item(n);
	
	//modificar sus estilos para ocultarlo
	obj.style.opacity=0.0;
	obj.style.width="0%";	
}

function out(n){
	//capturar la imagen del article el cual se llama ruina
	var obj=document.getElementsByClassName("ruina").item(n);
	
	//modificar sus estilos para mostrar la imagen
	obj.style.opacity=1.0;
	obj.style.width="100%";	
}

/*trabajando con las etiquetas a*/
function selec(n){
	var obj=document.getElementsByClassName("ciudad").item(n);
	obj.style.backgroundColor="blue";
	obj.style.color="white";
}

function noselec(n){
	var obj=document.getElementsByClassName("ciudad").item(n);
	obj.style.backgroundColor="white";
	obj.style.color="blue";
}


/*funciones para la pagina lima*/
var imgs= ["../imagenes/lima/0.jpg", "../imagenes/lima/1.jpg",
		   "../imagenes/lima/2.jpg", "../imagenes/lima/3.jpg",
           "../imagenes/lima/4.jpg", "../imagenes/lima/5.jpg",
		   "../imagenes/lima/6.jpg"];
 
var n=0;
//función para rotar el banner 
function carrusel(){ 
   	document.getElementById("banner").src = imgs[n] ;
   	n ++; 
   	n = n % imgs.length;
   	setTimeout("carrusel()",1000) ;
}

var pacs= ["../imagenes/lima/pac1.jpg", "../imagenes/lima/pac2.jpg",
		   "../imagenes/lima/pac3.jpg", "../imagenes/lima/pac4.jpg"];

var cars= ["../imagenes/lima/car1.jpg", "../imagenes/lima/car2.jpg",
		   "../imagenes/lima/car3.jpg", "../imagenes/lima/car4.jpg"];


/*funcion donde al clickear el enlace visualizo los detalles*/
function visualiza(n) {

    document.getElementById("portal").src ="";

	var obj=document.getElementsByClassName("ciudad").item(n);
	document.getElementById("titulo").innerHTML=obj.innerHTML;
	
	var imagenes=document.getElementById("cuadro").getElementsByTagName("img");
	
	if(n==0) 
		lista=pacs; 
	else 	
		lista=cars;
	
	for(var i=0;i< imagenes.length; i++){
			imagenes.item(i).src=lista[i];
	}
	
}

function ampliar(n){
	var obj=document.getElementsByClassName("imgcuadro").item(n);
	document.getElementById("portal").src=obj.src;

}

/*funciones a la pagina chiclayo*/

var rsin= ["../imagenes/facebook1.png", "../imagenes/twitter1.png", "../imagenes/youtube1.png"];

var rsout= ["../imagenes/facebook.png", "../imagenes/twitter.png", "../imagenes/youtube.png"];

function inrs(x){
	document.getElementsByClassName("rs").item(x).src=rsin[x];
}

function outrs(x){
	document.getElementsByClassName("rs").item(x).src=rsout[x];
}

function inct(x){
	document.getElementsByClassName("ctparrafo").item(x).style.visibility="visible";
}

function outct(x){
	document.getElementsByClassName("ctparrafo").item(x).style.visibility="hidden";
}

function ampliarch(n){
	var obj=document.getElementsByClassName("imgcuadro").item(n);
	document.getElementById("portalch").src=obj.src;

}






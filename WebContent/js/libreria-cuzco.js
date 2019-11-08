var arreglo= ["../imagenes/cuzco/0.jpg", "../imagenes/cuzco/1.jpg",
		   "../imagenes/cuzco/2.jpg", "../imagenes/cuzco/3.jpg",
           "../imagenes/cuzco/4.jpg"];
 
var n=0;
var rotacion;

function carrusel(){ 
   	document.getElementById("banner").src = arreglo[n] ;
   	n ++; 
   	n = n % arreglo.length;
	
	rotacion=setTimeout("carrusel()",1000) ;
}


function pausa(){
	if(rotacion!='undefined'){
		clearTimeout(rotacion);
		document.getElementById("control").src="../imagenes/go.png";		
		rotacion='undefined';
	}
	else
	{
		rotacion=setTimeout("carrusel()",1000) ;
		document.getElementById("control").src="../imagenes/pausa.png";		
	}	
}

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
	document.getElementsByClassName("ctparrafo").item(x).style.height="auto";
}

function outct(x){
	document.getElementsByClassName("ctparrafo").item(x).style.visibility="hidden";
	document.getElementsByClassName("ctparrafo").item(x).style.height=0;
}

var museos= ["../imagenes/trujillo/m0.jpg", "../imagenes/trujillo/m1.jpg",
		   "../imagenes/trujillo/m2.jpg", "../imagenes/trujillo/m3.jpg",
           "../imagenes/trujillo/m4.jpg","../imagenes/trujillo/m5.jpg","../imagenes/trujillo/m6.jpg"];
 

function listamuseo(n){
	var elementos = document.getElementById("lista");
	elementos.children[n].style.background="white";
	elementos.children[n].style.color="blue";
	document.getElementById("portal").src=museos[n];
}

function limpiarmuseo(n){
	var elementos = document.getElementById("lista");
	elementos.children[n].style.background="blue";
	elementos.children[n].style.color="white";
	document.getElementById("portal").src="";
}




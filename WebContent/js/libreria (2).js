var arreglo= ["../imagenes/baner/0.jpg", 
			"../imagenes/baner/1.jpg",
		   	"../imagenes/baner/2.jpg", 
			"../imagenes/baner/3.jpg",
           	"../imagenes/baner/4.jpg",
			"../imagenes/baner/5.jpg",
			"../imagenes/baner/6.jpg"
			];

var n=-1;
var rotacion;

function carrusel(){ 
    n ++; 
   	n = n % arreglo.length;
   	document.getElementById("banner").src = arreglo[n] ;
   	rotacion=setTimeout("carrusel()",1000) ;
}


function verimg(x){
	clearTimeout(rotacion);
	n=x;
	document.getElementById("banner").src=arreglo[n];
	rotacion=setTimeout("carrusel()",1000);
	
}

var rsin= ["../imagenes/facebook1.png", "../imagenes/twitter1.png", "../imagenes/youtube1.png"];

var rsout= ["../imagenes/facebook.png", "../imagenes/twitter.png", "../imagenes/youtube.png"];


function efectoIn(x){
	document.getElementsByClassName("rs").item(x).src=rsin[x];
}

function efectoNor(x){
	document.getElementsByClassName("rs").item(x).src=rsout[x];
}

function direccion(x){
	document.getElementById("0").src = "www.facebook.com";
	document.getElementById("1").src = "www.twitter.com";
	document.getElementById("2").src = "www.youtube.com";
}


//definir el metodo validar (Enviar)
function validar(){
	var dni=document.getElementById("txtdni").value;
	
	var patron=/^[0-9]{8}$/;	
	if(patron.test(dni)==false){
		alert("Ingrese el DNI");
	    return;
	}
	
	var nombre=document.getElementById("txtnombre").value;
	var patron=/^[a-zA-Z]{9}$/;
	
	if(patron.test(nombre)==false){
		alert("Ingrese su nombre completo");
		return;
	}
	
	var email=document.getElementById("txtemail").value;
	
	patron=/^[a-z0-9\.]+@[a-z]+\.[a-z]{2,3}$/;
	if(patron.test(email)==false){
		alert("Ingrese nuevamente su email");
	    return;
	}	
	
	
	
	alert("Formulario Completo");
}

/^[a-zA-Z]{9}$/;





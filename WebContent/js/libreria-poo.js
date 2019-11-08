var arreglo= ["./imagenes/20180129fisca18.jpg", 
			"./imagenes/maxresdefault.jpg",
		   	"./imagenes/Fondo6.jpg",
		   	"./imagenes/images.jpg",
		   	"./imagenes/SUNAT   Sorteo Virtual de Comprobantes de Pago.jpg",
		   	"./imagenes/sunat-sorteo-comprobantes-de-pago.jpg"
			];

var n=-1;
var rotacion;

function carrusel(){ 
    n ++; 
   	n = n % arreglo.length;
   	document.getElementById("banner").src = arreglo[n] ;
   	rotacion=setTimeout("carrusel()",3000) ;
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

var direc=["www.facebook.com","www.twitter.com","www.youtube.com"]

function direccion(x){
	window.open(direc[x], "_blank");

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
	var patron=/^[a-zA-Z]{3,10}$/;
	
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






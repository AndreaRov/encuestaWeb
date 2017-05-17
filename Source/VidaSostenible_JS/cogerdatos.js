function loadDoc() {
  var xhttp = new XMLHttpRequest();
  var url = "vidasostenible.json";
  
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
		var myArr = JSON.parse(this.responseText);
        myFunction(myArr);
    }
  };
  xhttp.open("GET", url , true);
  xhttp.send();
  
  function myFunction(arr) {
	var element=document.getElementById("formulario");
	    for(i = 0; i < arr.length; i++) {
			var div = document.createElement("div");
			element.appendChild(div);
			div.setAttribute("class",arr[i].depende);
			var parrafo=document.createElement("P");
			div.appendChild(parrafo);
			var node1=document.createTextNode(arr[i].enunciado);
			parrafo.appendChild(node1);
			
			var arrRespuestas = arr[i].respuestas;
			if (arr[i].tipo == "desplegable"){
				var selectRespuesta = document.createElement("select");
				selectRespuesta.setAttribute("id",arrRespuestas[j].idLabel);
				selectRespuesta.setAttribute("onclick",arrRespuestas[j].evento);
				for (j = 0; j < arrRespuestas.length; j++){
					var optionRespuesta = document.createElement("option");
						div.appendChild(selectRespuesta);
						selectRespuesta.appendChild(optionRespuesta);
					optionRespuesta.setAttribute("value",arrRespuestas[j].valor);
					optionRespuesta.setAttribute("id",arrRespuestas[j].id);
					var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
						optionRespuesta.appendChild(textoRespuesta);
				}
			}else{
				for (j = 0; j < arrRespuestas.length; j++){
					var labelRespuesta = document.createElement("label");
						labelRespuesta.setAttribute("id",arrRespuestas[j].idLabel);
					var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
						div.appendChild(labelRespuesta);
						labelRespuesta.appendChild(textoRespuesta);
					var inputt=document.createElement("input");
						div.appendChild(inputt);
						inputt.setAttribute("id",arrRespuestas[j].id);
						inputt.setAttribute("type",arr[i].tipo);
						inputt.setAttribute("name",arr[i].preguntaId);
						inputt.setAttribute("onclick",arrRespuestas[j].evento);
				}
			}
		}
	}
}
function ocultarDependencias(){
	var arrDependeClase = document.getElementsByClassName("depende");
	for (a = 0; a < arrDependeClase.length; a++){
		arrDependeClase[a].style.display="none";
	}
}
function mostrarDependencias(){
	var arrDependeClase = document.getElementsByClassName("depende");
	for (z = 0; z < arrDependeClase.length; z++){
		arrDependeClase[z].style.display="block";
	}
}
  
console.log(loadDoc());

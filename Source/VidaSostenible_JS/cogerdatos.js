function loadDoc() {
  var xhttp = new XMLHttpRequest();
  var url = "jsonString.php";
  
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
			var parrafo=document.createElement("P");
			element.appendChild(parrafo);
			var node1=document.createTextNode(arr[i].pregunta);
			parrafo.appendChild(node1);
			
			var arrRespuestas = arr[i].respuestas;
			if (arr[i].Tipo == "desplegable"){
				var selectRespuesta = document.createElement("select");
				selectRespuesta.setAttribute("id",arrRespuestas[j].idLabel);
				for (j = 0; j < arrRespuestas.length; j++){
					var optionRespuesta = document.createElement("option");
						element.appendChild(selectRespuesta);
						selectRespuesta.appendChild(optionRespuesta);
					optionRespuesta.setAttribute("value",arrRespuestas[j].valor);
					optionRespuesta.setAttribute("id",arrRespuestas[j].idRespuesta);
					var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
						optionRespuesta.appendChild(textoRespuesta);
				}
			}else{
				for (j = 0; j < arrRespuestas.length; j++){
					var labelRespuesta = document.createElement("label");
						labelRespuesta.setAttribute("id",arrRespuestas[j].idLabel);
					var textoRespuesta = document.createTextNode(arrRespuestas[j].respuesta);
						element.appendChild(labelRespuesta);
						labelRespuesta.appendChild(textoRespuesta);
					var inputt=document.createElement("input");
						element.appendChild(inputt);
						inputt.setAttribute("id",arrRespuestas[j].idRespuesta);
						inputt.setAttribute("type",arr[i].Tipo);
						inputt.setAttribute("name",arr[i].idPregunta);
				}
			}
		}
	}
}
  function mostrarDependencias (){
	
  }
  
  
   
  
  
  
  
  
  
  
console.log(loadDoc());
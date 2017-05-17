<?php
include 'conexionBBDD.php';

$preguntaAnterior = null;
$arrPreguntas = array ();
$arrRespustas = array ();

$sql = "SELECT pregunta.id as idPregunta, pregunta.pregunta, depende.id as idDepende, respuesta.respuesta , categoria.nombre, tipo.tipo
FROM depende
JOIN respuesta ON depende.idRespuesta = respuesta.id
JOIN pregunta ON depende.idPregunta = pregunta.id
JOIN pertenece ON pregunta.id=pertenece.idPregunta
JOIN categoria on pertenece.idCategoria=categoria.id
JOIN tipo ON pregunta.tipo=tipo.id";
$result = $conn->query($sql);

$i = 1;

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {

        $idPregunta = $row["idPregunta"];
        $respuesta = $row["respuesta"];
        $idDepende = $row["idDepende"];
        $categoria = $row["nombre"];
        $tipo = $row["tipo"];
        $idRespuesta = $idPregunta . "." . $idDepende;
        
        
        if($preguntaAnterior==$idPregunta){
            $arrRespustas[]= array ('idRespuesta'=> $idRespuesta, 'idLabel'=> $idRespuesta, 'respuesta'=> $respuesta);
        }else{
            // Cambiamos de pregunta
            if($i !=1){ // En la 1 no lo hace

        		    $arrUnaPregunta = array ('idPregunta'=> $preguntaAnterior, 'pregunta'=> $pregunta, 'Categoria'=>$categoria, 'Tipo'=>$tipo, 'respuestas' => $arrRespustas);

            	  $arrPreguntas[] = $arrUnaPregunta;

            }
            $pregunta = $row["pregunta"];
            $arrRespustas = array ();
            $preguntaAnterior=$idPregunta;
            $arrRespustas[]= array ('idRespuesta'=> $idRespuesta, 'idLabel'=> $idRespuesta, 'respuesta'=> $respuesta);
        }

        $i++;
    }

    // Metemos la �ltima fuera del bucle

    $arrUnaPregunta = array ('idPregunta'=> $idPregunta, 'pregunta'=> $pregunta, 'Categoria'=>$categoria, 'Tipo'=>$tipo, 'respuestas' => $arrRespustas);

    $arrPreguntas[] = $arrUnaPregunta;


} else {
    echo "0 results";
}

$jsonString = json_encode($arrPreguntas,JSON_PRETTY_PRINT);
//echo "<pre>";
echo $jsonString;
//echo "</pre>";
$conn->close(); // cierre de conexi�n con la BBDD
?>

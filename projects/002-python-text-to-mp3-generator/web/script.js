async function generarAudio(){


const texto = document.getElementById(
    "texto"
).value;


const mensaje = document.getElementById(
    "mensaje"
);



mensaje.innerHTML="Generando audio...";


const respuesta = await fetch(
    "/convertir",
    {

        method:"POST",

        headers:{
            "Content-Type":"application/json"
        },

        body:JSON.stringify({

            texto:texto

        })

    }
);



const resultado = await respuesta.json();



if(resultado.error){

    mensaje.innerHTML = resultado.error;

}
else{

    mensaje.innerHTML =
    "✅ Audio generado correctamente";

}



}
"""
=========================================================
Proyecto:
Python Text To MP3 Generator

Aplicación Web

Descripción:
Servidor Flask encargado de recibir texto desde la
interfaz web y generar archivos de audio MP3.

Autor:
RobertScience

=========================================================
"""

from flask import Flask, request, jsonify, send_file, render_template
from core.text_to_speech import convertir_texto_a_audio
import os


app = Flask(
    __name__,
    template_folder="../web",
    static_folder="../web"
)


@app.route("/")
def inicio():
    """
    Carga la interfaz principal.
    """

    return render_template("index.html")



@app.route("/convertir", methods=["POST"])
def convertir():

    """
    Recibe texto enviado desde la interfaz
    y genera un archivo MP3.
    """

    datos = request.get_json()

    texto = datos.get("texto", "")


    if not texto.strip():

        return jsonify({
            "error": "El texto no puede estar vacío"
        }), 400


    archivo = convertir_texto_a_audio(
        texto,
        "texto_convertido.mp3"
    )


    return jsonify({

        "mensaje": "Audio generado correctamente",

        "archivo": archivo

    })



@app.route("/descargar")
def descargar():

    """
    Permite descargar el último audio generado.
    """

    archivo = "output/texto_convertido.mp3"


    if os.path.exists(archivo):

        return send_file(
            archivo,
            as_attachment=True
        )


    return "Archivo no encontrado", 404



if __name__ == "__main__":

    app.run(
        host="0.0.0.0",
        port=5000,
        debug=True
    )
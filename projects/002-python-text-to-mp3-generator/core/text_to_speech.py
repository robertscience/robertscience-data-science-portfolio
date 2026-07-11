"""
=========================================================
Proyecto: Python Text To MP3 Generator

Módulo:
Motor de conversión de texto a audio

Descripción:
Este módulo contiene la lógica principal para transformar
texto escrito en archivos de audio MP3 utilizando tecnología
Text-To-Speech (TTS).

Autor:
RobertScience

=========================================================
"""

from gtts import gTTS
import os


def convertir_texto_a_audio(texto, nombre_archivo="audio_generado.mp3"):
    """
    Convierte un texto recibido en un archivo MP3.

    Parámetros:
    texto:
        Contenido que será convertido a voz.

    nombre_archivo:
        Nombre del archivo de salida.

    Retorna:
        Ruta del archivo generado.
    """

    carpeta_salida = "output"

    # Crear carpeta si no existe
    if not os.path.exists(carpeta_salida):
        os.makedirs(carpeta_salida)

    ruta_archivo = os.path.join(
        carpeta_salida,
        nombre_archivo
    )

    # Generación del audio
    audio = gTTS(
        text=texto,
        lang="es",
        slow=False
    )

    audio.save(ruta_archivo)

    return ruta_archivo
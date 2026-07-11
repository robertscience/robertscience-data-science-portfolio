"""
Tarea_M13_CD_robertscience.py
Generación de activos visuales corporativos para análisis de modelo de negocio
Empresa: Vans “Off The Wall”
Consultora: RobertsScience
"""

from PIL import Image, ImageDraw, ImageFont
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

# ======================================================
# BUSINESS MODEL CANVAS – ESTILO SKATER / PUNK
# ======================================================

WIDTH, HEIGHT = 1200, 750
canvas = Image.new("RGB", (WIDTH, HEIGHT), "#0B0B0B")
draw = ImageDraw.Draw(canvas)

cols, rows = 3, 3
block_w = WIDTH // cols
block_h = HEIGHT // rows

blocks = [
    ("Socios clave", "Proveedores estratégicos\nE-commerce\nLogística global\nColaboraciones creativas"),
    ("Actividades clave", "Diseño de producto\nMarketing digital\nAnálisis de tendencias\nProducción personalizada"),
    ("Propuesta de valor", "Productos icónicos\nPersonalización\nExperiencia de marca\nCultura urbana"),
    ("Relación con clientes", "Experiencia digital\nFidelización\nComunidades online\nInteracción directa"),
    ("Canales", "Tiendas físicas\nPlataforma web\nAplicaciones móviles\nMarketplaces"),
    ("Segmentos de clientes", "Jóvenes urbanos\nSkaters\nConsumidores streetwear\nComunidades creativas"),
    ("Recursos clave", "Datos de clientes\nTecnología analítica\nTalento creativo\nMarca global"),
    ("Estructura de costos", "Producción\nMarketing\nDistribución\nColaboraciones"),
    ("Fuentes de ingreso", "Venta de calzado\nRopa\nEdiciones especiales\nLicencias")
]

# Paleta skater punk (pasteles rudos)
colors = [
    "#FF6F61", "#F4D35E", "#3EC1D3",
    "#8E44AD", "#E67E22", "#2ECC71",
    "#E84393", "#00CEC9", "#D63031"
]

try:
    title_font = ImageFont.truetype("arialbd.ttf", 20)
    body_font = ImageFont.truetype("arial.ttf", 16)
except:
    title_font = ImageFont.load_default()
    body_font = ImageFont.load_default()

for i, ((title, content), color) in enumerate(zip(blocks, colors)):
    x = (i % cols) * block_w
    y = (i // cols) * block_h

    draw.rectangle(
        [x + 10, y + 10, x + block_w - 10, y + block_h - 10],
        fill=color,
        outline="white",
        width=3
    )

    # Título centrado
    title_bbox = title_font.getbbox(title)
    title_w = title_bbox[2] - title_bbox[0]
    draw.text(
        (x + (block_w - title_w) // 2, y + 25),
        title,
        fill="black",
        font=title_font
    )

    # Contenido centrado vertical y horizontal
    lines = content.split("\n")
    line_heights = []
    max_width = 0

    for line in lines:
        bbox = body_font.getbbox(line)
        w = bbox[2] - bbox[0]
        h = bbox[3] - bbox[1]
        line_heights.append(h)
        max_width = max(max_width, w)

    total_height = sum(line_heights)
    current_y = y + (block_h - total_height) // 2

    for line, h in zip(lines, line_heights):
        bbox = body_font.getbbox(line)
        w = bbox[2] - bbox[0]
        draw.text(
            (x + (block_w - w) // 2, current_y),
            line,
            fill="black",
            font=body_font
        )
        current_y += h + 4

canvas.save("canvas.png")
print("Canvas generado: canvas.png")

# ======================================================
# GRÁFICO – PROYECCIÓN DE DEMANDA
# ======================================================

import matplotlib.pyplot as plt

meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio"]
ventas = [1200, 1450, 1380, 1600, 1750, 1900]

fig, ax = plt.subplots(figsize=(10, 6))

# ---- Línea principal ----
ax.plot(
    meses,
    ventas,
    marker="o",
    linewidth=3,
    color="#C0392B",
    label="Ventas estimadas"
)

# ---- Área sombreada ----
ax.fill_between(
    meses,
    ventas,
    alpha=0.45
)

# ---- Títulos y etiquetas ----
ax.set_title(
    "Proyección de Demanda – Vans 2026",
    fontsize=18,
    fontweight="bold"
)

ax.set_xlabel("Periodo", fontsize=14)
ax.set_ylabel("Unidades vendidas (estimadas)", fontsize=14)

# ---- Valores sobre puntos ----
for x, y in zip(meses, ventas):
    ax.text(
        x,
        y + 35,
        f"{y}",
        ha="center",
        fontsize=11,
        fontweight="bold"
    )

# ---- Estilo final ----
ax.grid(True, linestyle="--", alpha=0.35)
ax.legend()
plt.tight_layout()

plt.savefig("grafica.png")
plt.close()

print("Gráfica final generada correctamente: grafica.png")

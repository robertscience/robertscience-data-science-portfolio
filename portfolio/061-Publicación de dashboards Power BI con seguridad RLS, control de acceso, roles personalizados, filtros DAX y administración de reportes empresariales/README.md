🔐 Publicación de Dashboards y Seguridad RLS en Power BI
📌 Descripción del Proyecto

En este proyecto desarrollé una práctica enfocada en la administración, seguridad y control de acceso dentro de dashboards construidos en Power BI.

El objetivo principal fue comprender la implementación de Row Level Security (RLS) y cómo esta herramienta permite restringir información de acuerdo con los permisos asignados a diferentes usuarios o roles dentro de una organización.

Durante el desarrollo trabajé sobre un dashboard analítico previamente construido, incorporando configuraciones de seguridad, validaciones de acceso y simulaciones de usuarios con diferentes niveles de visualización.

Esta práctica permitió integrar conceptos de Business Intelligence, administración de usuarios, seguridad de datos y preparación de reportes para escenarios empresariales reales.

🎯 Objetivos del Proyecto
Implementar seguridad a nivel de filas mediante RLS en Power BI.
Crear roles personalizados con permisos específicos.
Aplicar filtros dinámicos utilizando expresiones DAX.
Validar restricciones mediante la herramienta View As Roles.
Comprender el flujo de publicación hacia Power BI Service.
Simular un entorno empresarial con control de acceso a información.
🛠️ Tecnologías Utilizadas
Power BI Desktop
Power BI Service
Microsoft Fabric
DAX (Data Analysis Expressions)
Row Level Security (RLS)
Data Modeling
Business Intelligence
🔄 Desarrollo del Proyecto
1. Dashboard Base de Análisis

Como punto inicial utilicé el dashboard desarrollado en proyectos anteriores, el cual contiene:

Visualizaciones de ventas.
Indicadores KPI.
Segmentadores dinámicos.
Relaciones entre tablas.
Modelo de datos estructurado.

Antes de aplicar seguridad, el reporte permitía visualizar toda la información disponible dentro del modelo.

🔒 Implementación de Seguridad RLS

Posteriormente configuré un sistema de seguridad utilizando la funcionalidad Manage Roles dentro de Power BI Desktop.

Para este ejercicio desarrollé un rol denominado:

Sales_Manager

Este rol fue configurado para aplicar restricciones específicas sobre los datos mediante filtros basados en información geográfica.

La implementación permitió controlar qué registros podían visualizar determinados usuarios, simulando un escenario empresarial donde cada área únicamente tiene acceso a la información correspondiente a sus responsabilidades.

⚙️ Configuración de Filtros mediante DAX

Dentro de la configuración del rol de seguridad trabajé con expresiones DAX para establecer reglas de filtrado sobre el modelo.

El objetivo principal fue comprender cómo Power BI utiliza DAX para controlar dinámicamente la información visible dentro de un reporte.

Este proceso permitió reforzar conceptos relacionados con:

Relaciones entre tablas.
Filtrado contextual.
Seguridad basada en roles.
Administración de modelos analíticos.
👤 Validación del Rol de Seguridad

Después de crear el rol personalizado realicé pruebas utilizando la herramienta:

View As Roles

Mediante esta funcionalidad simulé la experiencia de un usuario con permisos limitados, verificando que el dashboard mostrara únicamente la información autorizada.

Esta validación permitió comprobar que la configuración RLS funcionaba correctamente antes de implementar el reporte dentro de un entorno empresarial.

☁️ Publicación y Administración en Power BI Service

Como parte del proyecto revisé el proceso de publicación de dashboards utilizando Power BI Service y conceptos relacionados con administración empresarial.

Durante esta etapa analicé elementos como:

Espacios de trabajo.
Administración de usuarios.
Permisos de acceso.
Requisitos de licenciamiento.
Integración con entornos empresariales.

Debido a restricciones de disponibilidad de cuentas organizacionales, la validación práctica se realizó mediante Power BI Desktop utilizando simulaciones locales de seguridad RLS.

El proceso permitió documentar correctamente la configuración de seguridad y el comportamiento esperado dentro de una implementación profesional.

🏗️ Estructura del Proyecto
power-bi-publicacion-dashboard-seguridad-rls-control-acceso/
│
├── README.md
│
├── dashboard/
│   ├── reporte_powerbi.pbix
│   └── capturas/
│       ├── dashboard_principal.png
│       ├── configuracion_roles.png
│       ├── sales_manager_rls.png
│       ├── view_as_roles.png
│       └── dashboard_filtrado.png
│
├── documentation/
│   └── reporte_practica_m50.pdf
│
└── resources/
    └── modelo_datos/

Nota: El archivo original de Power BI puede no estar incluido debido al tamaño del proyecto. Las capturas y documentación muestran el flujo completo de configuración y validación.

📊 Resultados Obtenidos

El resultado final fue un dashboard con una capa adicional de seguridad implementada mediante Row Level Security.

La solución permitió:

Controlar la información visible por usuario.
Simular diferentes perfiles de acceso.
Validar filtros dinámicos.
Comprender procesos de administración de dashboards empresariales.
🧠 Conocimientos Aplicados

Durante este proyecto fortalecí mis conocimientos en:

Seguridad dentro de modelos analíticos.
Implementación de RLS en Power BI.
Creación de roles personalizados.
Validación de permisos mediante simulación de usuarios.
Administración de soluciones Business Intelligence.
Preparación de dashboards para ambientes empresariales.
💡 Reflexión Personal

Este proyecto me permitió comprender que el desarrollo de dashboards profesionales no solamente requiere construir visualizaciones atractivas, sino también garantizar que la información sea segura y llegue únicamente a los usuarios autorizados.

Aprendí que la seguridad de datos es un componente fundamental dentro de cualquier solución empresarial de Business Intelligence, especialmente cuando diferentes departamentos necesitan consultar información con distintos niveles de acceso.

La implementación de RLS fortaleció mi capacidad para desarrollar soluciones analíticas más completas, combinando visualización, modelado, seguridad y administración de información.

👨‍💻 Autor

RobertsScience Data Analytics Consulting

Convertimos información en decisiones inteligentes.

🌐 https://robertscience.online
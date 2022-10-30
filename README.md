# flutter_json_test

Prueba la transformación de datos JSON en un objeto dart, usando la librería "json_serializable".

## Referencias

- [ToJson does not convert nested class correctly · Issue #356 · google/json_serializable.dart (github.com)](https://github.com/google/json_serializable.dart/issues/356)
- [Documentation for using the new @JsonSerializable(genericArgumentFactories: true) (3.5.0) · Issue #723 · google/json_serializable.dart (github.com)](https://github.com/google/json_serializable.dart/issues/723)
- [json_serializable.dart/example/lib at master · google/json_serializable.dart (github.com)](https://github.com/google/json_serializable.dart/tree/master/example/lib)

## Objeto JSON:

 ```json
{
  "message": "OK",
  "status": "OK",
  "data": {
    "template": {
      "id": 3,
      "name": "Proyectos fondos internos",
      "label": "Proyectos fondos internos",
      "steps": [
        {
          "id": 10,
          "name": "Proyecto con Factibilidad Técnica y Visto Bueno Alcalde",
          "label": "Proyecto con Factibilidad Técnica y Visto Bueno Alcalde",
          "index": 0,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 2,
            "name": "Proyectos",
            "label": "Proyectos"
          }
        },
        {
          "id": 11,
          "name": "Inicio tramitación D°A° Aprobatorio Municipal",
          "label": "Inicio tramitación D°A° Aprobatorio Municipal",
          "index": 1,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 2,
            "name": "Proyectos",
            "label": "Proyectos"
          }
        },
        {
          "id": 12,
          "name": "D°A° Municipal Aprobación de Proyecto",
          "label": "D°A° Municipal Aprobación de Proyecto",
          "index": 2,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 2,
            "name": "Proyectos",
            "label": "Proyectos"
          }
        },
        {
          "id": 13,
          "name": "D°A° Municipal Aprobación de Proyecto",
          "label": "D°A° Municipal Aprobación de Proyecto",
          "index": 3,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 2,
            "name": "Proyectos",
            "label": "Proyectos"
          }
        },
        {
          "id": 14,
          "name": "Envío Bases a Asesoría Jurídica",
          "label": "Envío Bases a Asesoría Jurídica",
          "index": 4,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 15,
          "name": "Visación Asesoría Jurídica",
          "label": "Visación Asesoría Jurídica",
          "index": 5,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 16,
          "name": "Envío D°A° Llamado/Contratación DAF/SALUD/EDUCACIÓN",
          "label": "Envío D°A° Llamado/Contratación DAF/SALUD/EDUCACIÓN",
          "index": 6,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 17,
          "name": "D°A° Aprueba Llamado Licitación o Contratación",
          "label": "D°A° Aprueba Llamado Licitación o Contratación",
          "index": 7,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 18,
          "name": "Publicación Mercado Público",
          "label": "Publicación Mercado Público",
          "index": 8,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 19,
          "name": "Apertura",
          "label": "Apertura",
          "index": 9,
          "is_relevant": true,
          "days_type_to_count": "correlative",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 20,
          "name": "Solicitud aclaraciones",
          "label": "Solicitud aclaraciones",
          "index": 10,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 21,
          "name": "Respuesta aclaraciones",
          "label": "Respuesta aclaraciones",
          "index": 11,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 22,
          "name": "Firmas Comisión Apertura",
          "label": "Firmas Comisión Apertura",
          "index": 12,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 23,
          "name": "Envío Evaluación a Comisión Técnica",
          "label": "Envío Evaluación a Comisión Técnica",
          "index": 13,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 24,
          "name": "Firmas Comisión de Evaluación",
          "label": "Firmas Comisión de Evaluación",
          "index": 14,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 25,
          "name": "Firma Alcalde",
          "label": "Firma Alcalde",
          "index": 15,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 26,
          "name": "Envío D°A° Adjudicación DAF/SALUD/EDUCACIÓN",
          "label": "Envío D°A° Adjudicación DAF/SALUD/EDUCACIÓN",
          "index": 16,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 27,
          "name": "D°A° Adjudicación",
          "label": "D°A° Adjudicación",
          "index": 17,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 28,
          "name": "Notificación D°A° a SECPLA",
          "label": "Notificación D°A° a SECPLA",
          "index": 18,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 29,
          "name": "Publicación Adjudicación en Mercado Público",
          "label": "Publicación Adjudicación en Mercado Público",
          "index": 19,
          "is_relevant": false,
          "days_type_to_count": null,
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        },
        {
          "id": 30,
          "name": "Firma Contrato y D°A° aprobación",
          "label": "Firma Contrato y D°A° aprobación",
          "index": 20,
          "is_relevant": true,
          "days_type_to_count": "business",
          "unit_in_charge": {
            "id": 1,
            "name": "Licitaciones",
            "label": "Licitaciones"
          }
        }
      ]
    },
    "units": [
      {
        "id": 1,
        "name": "Licitaciones",
        "label": "Licitaciones",
        "users": [
          {
            "is_admin": false,
            "rut": "410340194",
            "rut_formatted": "41.034.019-4",
            "first_name": "Minnie",
            "middle_name": "Prof. Haskell Steuber Sr.",
            "last_name": "Davis",
            "mother_last_name": "Mayer",
            "full_name": "Minnie Prof. Haskell Steuber Sr. Davis Mayer",
            "email": "omer96@example.net",
            "phone": null,
            "confirmed_citizen": false
          },
          {
            "is_admin": true,
            "rut": "31252788K",
            "rut_formatted": "31.252.788-K",
            "first_name": "Heather",
            "middle_name": "Abigail Stokes",
            "last_name": "Wehner",
            "mother_last_name": "Glover",
            "full_name": "Heather Abigail Stokes Wehner Glover",
            "email": "jaden.stroman@example.org",
            "phone": null,
            "confirmed_citizen": false
          }
        ]
      },
      {
        "id": 2,
        "name": "Proyectos",
        "label": "Proyectos",
        "users": [
          {
            "is_admin": false,
            "rut": "241529614",
            "rut_formatted": "24.152.961-4",
            "first_name": "Laurel",
            "middle_name": "Myrl Vandervort",
            "last_name": "Kshlerin",
            "mother_last_name": "Trantow",
            "full_name": "Laurel Myrl Vandervort Kshlerin Trantow",
            "email": "edward25@example.org",
            "phone": null,
            "confirmed_citizen": false
          }
        ]
      }
    ]
  }
}
 ```

## Partes involucradas

Este objeto incluye varias partes internamente:

### 1. Objeto genérico con respuesta API

```json
{
	"message": "OK",
    "status": "OK",
    "data": { /* ... */ }
}
```

### 2. Plantilla

Está dentro del **objeto genérico**.

```json
{
  "template": {
    "id": 3,
    "name": "Proyectos fondos internos",
    "label": "Proyectos fondos internos",
    "steps": []
  }
}
```

### 3. Etapas

Está dentro de **plantilla**

```json
{
  "steps": [
    {
      "id": 10,
      "name": "Proyecto con Factibilidad Técnica y Visto Bueno Alcalde",
      "label": "Proyecto con Factibilidad Técnica y Visto Bueno Alcalde",
      "index": 0,
      "is_relevant": true,
      "days_type_to_count": "business",
      "unit_in_charge": { /* ... */ }
    },
    // ...
  ]
}
```

### 4. Unida encargada

Dentro de **etapa**

```json
{
  "unit_in_charge": {
    "id": 1,
    "name": "Licitaciones",
    "label": "Licitaciones"
  }
}
```

### 5. Unidades

Dentro de **plantillas**

```json
{
  "units": [
    {
      "id": 1,
      "name": "Licitaciones",
      "label": "Licitaciones",
      "users": [/*...*/]
    },
    // ...
  ]
}
```



### 6. Usuarios

Dentro de **unidades**

```json
{
  "users": [
    {
      "is_admin": false,
      "rut": "410340194",
      "rut_formatted": "41.034.019-4",
      "first_name": "Minnie",
      "middle_name": "Prof. Haskell Steuber Sr.",
      "last_name": "Davis",
      "mother_last_name": "Mayer",
      "full_name": "Minnie Prof. Haskell Steuber Sr. Davis Mayer",
      "email": "omer96@example.net",
      "phone": null,
      "confirmed_citizen": false
    },
    // ...
  ]
}
```


# Changelog — Faro

## 1.1.0

Ampliación de esquemas y saneado del modo claro.

### Nuevos esquemas
- **Bruma · frío** — contrapunto frío al set: lienzo pizarra azulado, estructura
  gélida (escarcha, periwinkle, teal hielo) cortada por un único haz cálido de
  ámbar (H1, negrita, marcadores). Metáfora: el faro visto entre niebla.
- **Aquelarre · espectral** — esquema Halloween: lienzo morado casi negro
  (`#17121f`), acento calabaza (`#f0842f`), y headings en gama afín (calabaza,
  verde de bruja, lavanda fantasma, ámbar de vela, teal espectral, malva).

Con esto son **6 esquemas × 4 estructuras**.

### Modo claro (corrección importante)
- El esquema Faro base ya define la **paleta semántica** en claro (antes solo
  redefinía `h1–h6`, dejando negrita/tags/enlaces/`th` en pasteles de modo
  oscuro, casi invisibles sobre papel).
- Rampa `--color-base-*` cálida en claro (antes caía a los grises fríos de serie).
- **Paleta de sintaxis (`--code-*`) completa en claro** (antes solo el fondo).
- `--text-accent` en claro pasa a `var(--faro-blue)`: los enlaces internos siguen
  el esquema también en claro.
- `tag`, código inline y `multi-select-pill` mezclan con `--text-normal` en vez de
  `white` → adaptativos (aclaran en oscuro, oscurecen en claro).

### Otros cambios
- **Modo vivo** reimplementado: *bloom* de dos paradas (anillo cercano nítido +
  halo suave) en vez de la niebla única de 22px que emborronaba las letras. Solo
  en modo oscuro.
- El toggle **«Resaltar la línea activa»** gatea ahora todo el resalte (fondo +
  mini-línea); antes el fondo se pintaba siempre.
- `--faro-red` cableado a **enlaces internos no resueltos**; `--faro-pink`
  (variable muerta) eliminada.
- Fix: la **línea de acento suelta bajo la cabecera en móvil** (indicador de panel
  activo, inútil con un solo panel) ya no aparece.
- Tabla: eliminado el `box-shadow` que doblaba el borde de 1px.
- Zebra de tablas y demás tonos derivados de la rampa (sin blanco cableado).
- **`@media print`** neutraliza el acento (cabecera de tabla, barra de cita,
  resaltados) a tinta y usa fondo de código claro.

## 1.0.0

Versión unificada inicial: 4 esquemas (Faro, Noctiluca, Seda, Marea) × 4
estructuras de encabezados (Limpio, Bandas, Editorial serif, Líneas), separando
color de estructura. Sin `!important`, sin `:has()`, sin assets remotos.

# Changelog — Faro

## Sin publicar

- **4 esquemas de color nuevos** (ahora 10): **Grafito** (sobrio, casi monocromo azul-acero),
  **Musgo** (verdes de bosque + ámbar), **Sintética** (synthwave magenta/cian) y **Ácido**
  (lima ácido + magenta, máxima intensidad). Todos con modo claro y oscuro, compatibles con las
  4 estructuras de encabezado y el modo vivo, y **verificados AA** (0 pares bajo el mínimo).

- **La guía de línea activa se muestra por defecto**, sin depender de tener Style
  Settings instalado, y con más presencia en modo claro (antes se lavaba sobre el
  papel). El toggle pasa a ser de apagado (`faro-focus-line-off`, «Sin resaltar la
  línea activa»).

## 1.2.0

Accesibilidad: contraste WCAG AA en toda la paleta, foco desacoplado y gate de medición.

### Contraste (AA en todos los pares reales)
- **Foco desacoplado del acento** (`--faro-focus`): el anillo de `:focus-visible` ya
  no depende del acento. En el esquema «faro» claro (donde el acento daba 2.91:1)
  usa un oro más profundo que garantiza el mínimo de 3:1; el resto de esquemas
  conservan foco = su acento.
- **Sintaxis de código (`--code-*`) a AA** en claro y oscuro (comentarios, keywords,
  strings, operadores… más profundos, conservando el tono).
- **Etiqueta del botón CTA en claro** pasa a tinta oscura sobre el oro: el blanco
  sobre oro claro no llegaba a 4.5:1.
- Ajustes de `faro-accent-2` (etiquetas), `h5` de Aquelarre y otros tonos que
  rozaban el umbral. Ningún par real queda bajo AA (solo `text-faint`, incidental).

### Tokens
- Definidos `--icon-color`/`-hover`/`-active` y `--metadata-label-text-color` en
  modo claro (antes caían al default de Obsidian, fuera de paleta).
- **Trío `--accent-h/s/l` por esquema**: evita que los plugins que calculan con
  `hsl(var(--accent-h)…)` se pinten con el morado por defecto de Obsidian.

### Herramientas
- Gate de contraste (`hooks/pre-commit`): mide WCAG AA + higiene CSS antes de cada
  commit; un par bajo AA o un esquema sin medir aborta el commit.

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

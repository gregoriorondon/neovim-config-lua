; Establece la prioridad de la inyección
; Los inyectores deben tener mayor prioridad que los inyectores parent para el mismo rango
(script_tag_content) @injection.content
(#set! injection.language "javascript")

(style_tag_content) @injection.content
(#set! injection.language "css")

(directive_content) @injection.content
(#set! injection.language "php")

; Opcional, pero útil para completar Laravel
(tag_name) @injection.content
(#set! injection.language "html")

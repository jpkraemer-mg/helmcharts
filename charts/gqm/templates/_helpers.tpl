{{/* vim: set filetype=mustache: */}}

{{- define "backend.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.backend.image "global" .Values.global) }}
{{- end -}}

{{- define "frontend.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.backend.image "global" .Values.global) }}
{{- end -}}
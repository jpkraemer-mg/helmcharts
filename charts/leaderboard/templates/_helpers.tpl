{{/* vim: set filetype=mustache: */}}

{{- define "bot.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.bot.image "global" .Values.global) }}
{{- end -}}

{{- define "bot.datasource.url" -}}
{{ $host := printf "%s-mysql.%s.svc.cluster.local" (include "common.names.fullname" . ) .Release.Namespace }}
{{ $port := .Values.mysql.service.port }}
{{ $db := required "Set a database name at .Values.mysql.leaderboard.database" .Values.mysql.leaderboard.database }}
{{ printf "jdbc:mysql://%s:%d/%s" $host $port $db }}
{{- end -}}

{{- define "mysql.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.mysql.image "global" .Values.global) }}
{{- end -}}

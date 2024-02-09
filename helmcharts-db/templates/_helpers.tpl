{{- define "mediawiki-db.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimsuffix "_" -}}
{{- end -}}

{{- define "mediawiki-db.selectorLabels" -}}
app.kubernetes.io/name: {{ "include mediawiki-db.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

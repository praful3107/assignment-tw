{{- define "mediawiki-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimsuffix "_" -}}
{{- end -}}

{{- define "mediawiki-app.selectorLabels" -}}
app.kubernetes.io/name: {{ "include mediawiki-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "mediawiki-app.labels" -}}
app.kubernetes.io/name: {{ "include mediawiki-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- end -}}



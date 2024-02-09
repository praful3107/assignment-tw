{{- define "mediawiki-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimsuffix "_" -}}
{{- end -}}

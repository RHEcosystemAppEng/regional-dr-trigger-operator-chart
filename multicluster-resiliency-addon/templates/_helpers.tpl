{{/* mcra.labels generates labels */}}
{{- define "mcra.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- end }}

{{/* mcra.manager-image composes the manager image */}}
{{- define "mcra.manager-image" -}}
{{- printf "%s/%s/%s:%s" .Values.manager.image.registry .Values.manager.image.owner .Values.manager.image.name .Values.manager.image.tag  -}}
{{- end -}}

{{/* mcra.agent-image composes the manager image */}}
{{- define "mcra.agent-image" -}}
{{- printf "%s/%s/%s:%s" .Values.agent.image.registry .Values.agent.image.owner .Values.agent.image.name .Values.agent.image.tag  -}}
{{- end -}}

{{/* mcra.metrics-proxy-image composes the manager image */}}
{{- define "mcra.metrics-proxy-image" -}}
{{- printf "%s/%s/%s:%s" .Values.manager.metrics.proxy.image.registry .Values.manager.metrics.proxy.image.owner .Values.manager.metrics.proxy.image.name .Values.manager.metrics.proxy.image.tag  -}}
{{- end -}}

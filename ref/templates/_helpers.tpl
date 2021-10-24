{{- define "ref.name" -}}
ref
{{- end -}}

{{- define "ref.labels" -}}
app.kubernetes.io/component: {{ include "ref.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/name: {{ include "ref.name" . }}
app.kubernetes.io/part-of: {{ include "ref.name" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}"
cluster-name: {{ .Values.rancherClusterName }}
cluster-id: {{ .Values.rancherClusterId }}
aws-account: {{ .Values.rancherAwsAccount | quote }}
{{/*aws-region: {{ .Values.rancherAwsRegion }}*/}}
{{- end }}

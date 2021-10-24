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
cluster-name: {{ .Values.rancher.clusterName }}
cluster-id: {{ .Values.rancher.clusterId }}
aws-account: {{ .Values.rancher.aws.accountId | quote }}
aws-region: {{ .Values.rancher.aws.region }}
{{- end }}

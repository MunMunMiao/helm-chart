{{/* Server */}}
{{- define "aria2-pro.server.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.server.name" -}}
{{- printf "%s-server" .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.server.fullname" -}}
{{- printf "%s-server" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.server.volume.downloads.name" -}}
{{- printf "%s-server-downloads" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.server.volume.config.name" -}}
{{- printf "%s-server-config" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.server.labels" -}}
helm.sh/chart: {{ include "aria2-pro.server.chart" . }}
{{ include "aria2-pro.server.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "aria2-pro.server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "aria2-pro.server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}



{{/* Web */}}
{{- define "aria2-pro.web.chart" -}}
{{- printf "%s-%s-web" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.web.name" -}}
{{- printf "%s-web" .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.web.fullname" -}}
{{- printf "%s-web" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "aria2-pro.web.labels" -}}
helm.sh/chart: {{ include "aria2-pro.web.chart" . }}
{{ include "aria2-pro.web.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "aria2-pro.web.selectorLabels" -}}
app.kubernetes.io/name: {{ include "aria2-pro.web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

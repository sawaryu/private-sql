.PHONY: gcloud/login/default
gcloud/login/default:
	gcloud auth application-default login

.PHONY: gcloud/login
gcloud/login:
	gcloud auth login

.PHONY: tf/init
tf/init:
	terraform init

.PHONY: tf/plan
tf/plan:
	terraform plan

.PHONY: tf/apply
tf/apply:
	terraform apply

.PHONY: tf/destroy
tf/destroy:
	terraform destroy

.PHONY: tf/fmt
tf/fmt:
	terraform fmt -recursive

.PHONY: func/delete
func/delete:
	gcloud functions delete PrivateSqlFunc --region asia-northeast1
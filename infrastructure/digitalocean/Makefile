TF   ?= terraform


help: Makefile
	@echo
	@echo " Choose a command to run:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo


## fmt: terraform format
.PHONY: fmt
fmt:
	$(TF) fmt


## init: terraform init
.PHONY: init
init:
	$(TF) init


## plan: terraform plan
.PHONY: plan
plan:
	$(TF) plan


## apply: terraform apply
.PHONY: apply
apply:
	$(TF) apply


## destroy: terraform destroy
.PHONY: destroy
destroy:
	$(TF) destroy

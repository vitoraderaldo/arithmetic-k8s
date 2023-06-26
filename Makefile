deploy:
	make deploy -C argo
	make deploy -C calculator

open-argo-ui:
	make -C argo open-argo-ui

create-apps:
	make -C argo create-apps

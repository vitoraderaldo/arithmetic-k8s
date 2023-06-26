deploy:
	make deploy -C argo
	make deploy -C calculator
	make deploy -C observability

open-argo-ui:
	make -C argo open-argo-ui

open-kong-port:
	make -C kong open-kong-port

create-apps:
	make -C argo create-apps

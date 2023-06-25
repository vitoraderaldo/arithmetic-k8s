deploy:
	kubectl apply -f k8s/namespace.yaml
	kubectl apply -n argocd -f k8s

open-argo-ui:
	argocd admin initial-password -n argocd
	echo "ArgoCD is now available at https://localhost:8080"
	kubectl port-forward svc/argocd-server -n argocd 8080:443

create-apps:
	argocd login localhost:8080
	argocd app create arithmetic-kong \
	--repo https://github.com/vitoraderaldo/arithmetic-kong \
	--sync-policy none \
	--path k8s \
	--dest-server https://kubernetes.default.svc \
	--dest-namespace default

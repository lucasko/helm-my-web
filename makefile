

install:
	helm install mytomcat --set myweb.env.name=test56 .

upgrade:
	helm upgrade mytomcat .
	kubectl get pods -A

delete:
	helm delete mytomcat 

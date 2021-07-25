

install:
	helm install mytomcat --set myweb.env.name=test56 .

upgrade:
	helm upgrade mytomcat .
	kubectl get pods -A

delete:
	helm delete mytomcat 

plugin/install:
	mkdir -p build/
	git clone https://github.com/chartmuseum/helm-push.git  build/helm-push

package:
	rm -rf ./build/
	mkdir -p build/
	helm package -d build/  .
	ls -ls build/*.tgz 
push:
	helm repo add myrepo http://192.168.228.1:8081/repository/helm-release
	helm . myrepo

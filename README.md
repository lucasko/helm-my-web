helm repo add stable https://charts.helm.sh/stable

helm install mytomcat .


helm plugin install --version master https://github.com/sonatype-nexus-community/helm-nexus-push.git


helm nexus-push {helm repo 名稱} login  -u {帳號} -p {密碼}
helm nexus-push {helm repo 名稱} {helm chart}


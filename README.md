# Blog API
Based on blog-api: https://github.com/olawalejarvis/blog_api_tutorial

## REQUIREMENTS
- Install Docker: https://docs.docker.com/get-docker/
- Install Minikube: https://minikube.sigs.k8s.io/docs/start/
- Install kubectl

## CONNECT to Postgres DB
  - minikube start
  - kubectl apply -f postgres-<all yaml files>.yaml
  - kubectl get nodes minikube -o wide #to get the IP-address of the node
  - psql -h <IP-address> -U docker -d docker --password -p 30015 #password is: docker

## POSTS
- Part 1: https://www.codementor.io/olawalealadeusi896/restful-api-with-python-flask-framework-and-postgres-db-part-1-kbrwbygx5
- Part 2: https://www.codementor.io/olawalealadeusi896/building-a-restful-blog-apis-using-python-and-flask-part-2-l9y8awusp
- Part 3: https://www.codementor.io/olawalealadeusi896/building-a-restful-blog-apis-using-python-and-flask-part-3-lx7rt8pfk


//Dockerfile.app

* This Dockerfile assumes that the wiki application has the below two files in the same directory.

* index.php: the main PHP script that defines the routes and logic of the mediawiki application.
* mysql database file that stores the wiki pages and their content

//Dockerfile.mydb

* This will create a container named mysql-wiki and expose the port 3306 to the host machine.
  
* It will also mount the init.sql file to the container and execute it when the database is initialized.

// Build the image from the dockerfiles and push them to any registry (jfrog,nexus,acr,etc.)

// Create a helmchart for the application that defines Kubernetes resources needed to run the application such as deployment, service and ingress.

// Create a helmchart for the database that defines Kubernetes resources needed to run the DB such as statefulset, service and persistentvolumeclaim.


// Automation using Azure DevOps CICD pipeline
* Create CI pipeline(build pipeline). Pipeline will be based on yaml template. This pipeline will checkout the code from repos, build and push the docker image to registry, package the helm chart tagged with a version no and push helm package to registry.
* Create CD pipeline(release pipeline). In this case docker image and helm package are the artifacts which will be used for deployment on k8s cluster.
* Deploy the helm chart to Dev/QA/Staging environments.
* Helm upgrade command can be used with the --install flag to support the first install and subsequent upgrades.
* Wait for an approver to approve or reject the deployment.
* Retag the container image for release and push the release tag to the container registry.
* Deploy the helm chart in production cluster.

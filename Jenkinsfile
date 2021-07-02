library 'jenkins-ptcs-library@3.1.0'

podTemplate(label: pod.label,
  containers: pod.templates
) {

    def branch = (env.BRANCH_NAME)
    node(pod.label) {
        stage('Checkout') {
            checkout scm
        }
        stage('Build & Publish'){
            publishContainerToGcr("azure-powershell-bicep")
            publishTagToDockerhub("azure-powershell-bicep")
        }
    }
}

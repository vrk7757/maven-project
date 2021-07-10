pipeline
{
agent any
stages
{
 stage ('scm checkout')
 { steps {
     git branch: 'master', url: 'https://github.com/prakashk0301/maven-project/'
         }
 }
 
stage ('create package')
{
    steps {
     
          withMaven(jdk: 'JDK_HOME', maven: 'Maven_Home') 
            { sh 'mvn package' }
    }
}

stage ('Run Docker build')
{ steps { sh 'docker build -t pkw0301/april_k8s-cicd:v1 .'}
}


stage ('Upload Docke image to Docker hUb')
{ steps { 
withDockerRegistry(credentialsId: 'DockerHubAccount', url: 'https://index.docker.io/v1/') {
   sh 'docker push pkw0301/april_k8s-cicd:v1'
}
}
}


}}

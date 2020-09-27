pipeline
{
agent any
stages
{
stage ('scm checkout')
{
steps {git branch: 'may-k8s-demo', url: 'https://github.com/prakashk0301/maven-project'}
}
  
  stage ('build artifacts')
  {
    steps {
      withMaven(jdk: 'locakjdk-1.8', maven: 'localmaven') {
    sh 'mvn package'
          }
    
          }
  
  }
  
  
  stage ('docker build')
  {
    steps {sh 'docker build -t pkw0301/may-k8s-cicd:latest .'}
  
  }
  
  stage ('docker push')
  { 
    steps {withCredentials([usernameColonPassword(credentialsId: 'dockerhubid', variable: '')]) {
    sh 'docker push pkw0301/may-k8s-cicd:latest'
}
    }
  }
  

}}

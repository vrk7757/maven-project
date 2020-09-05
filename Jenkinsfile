pipeline
{
agent any
stages
{
stage ('scm checkout')
{steps {git branch: 'may-docker-cicd', url: 'https://github.com/prakashk0301/maven-project/'}}

  
  
  stage ('code build')
  {steps { withMaven(jdk: 'locakjdk-1.8', maven: 'localmaven') {
    sh 'mvn package'
}}}
 
  
    stage ('docker image build')
  {steps { sh 'docker build -t pkw0301/myadockercicd:01 .'}}
  
  
  stage ('Push docker images to Docker hub') 
  {steps{
  withCredentials([usernameColonPassword(credentialsId: 'DOCKERHUBID', variable: '')]) {
    sh "docker login -u pkw0301 -p ${DOCKERHUBID}"
    sh 'docker push pkw0301/myadockercicd:01'
  }}}
  
  
}}

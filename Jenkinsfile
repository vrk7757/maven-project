pipeline
{
agent any
stages
{
 stage('parllel execution')
 {
  parallel
  {
stage('scm checkout')
 {steps
{git branch: 'master', url: 'https://github.com/vrk7757/maven-project.git'}}
stage('test the code')
 {steps
 {withMaven(globalMavenSettingsConfig: 'null', jdk: 'my-jdk', maven: 'my-mvn', mavenSettingsConfig: 'null')}
   {sh 'mvn test'}}
}
}
 stage('build code')
 {steps
  {withMaven(jdk: 'my-jdk', maven: 'my-mvn')
   {sh'mvn package'}}}
stage('docker stage')
 {steps
  {sh 'docker build -t vrk7757/docker-cicd:01 .'}}
 stage('docker push')
 {steps {// This step should not normally be used in your script. Consult the inline help for details.
   withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') 
  {sh 'docker push vrk7757/docker-cicd:01'}}}
}
}

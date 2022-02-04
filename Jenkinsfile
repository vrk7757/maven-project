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
 stege('test the code')
 {steps
  {sh 'echo test code'}}
}
}

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
  
  
}}

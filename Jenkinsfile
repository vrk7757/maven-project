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

}}

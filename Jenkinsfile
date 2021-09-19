pipeline
{
    agent any
    stages
{
    stage('scm chekout')
    { steps{git branch: 'master', url: 'https://github.com/vrk7757/maven-project.git'} }
    stage('build the code')
    {steps {withMaven(jdk: 'java-home', maven: 'maven-home')}
      { sh 'mvn package'}} 
    stage('deploy to dev')
    {steps
     {
     sshagent(['tomcat-pipeline'])
     {sh 'scp -o StrictHostKeyChecking=no */target/*.war ec2-user@172.31.41.47:/usr/share/tomcat/webapps'}}
}
}    
}

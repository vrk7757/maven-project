pipeline
{
agent any
stages
{
stage('scm checkout')
{steps
{git branch: 'master', url: 'https://github.com/vrk7757/maven-project.git'}}
stage('build the code')
{steps
 {withMaven(globalMavenSettingsConfig: 'null', jdk: 'my-jdk', maven: 'my-mvn', mavenSettingsConfig: 'null')}
 {sh 'mvn package'}}
 stage('test the code')
 {steps
 {withMaven(globalMavenSettingsConfig: 'null', jdk: 'my-jdk', maven: 'my-mvn', mavenSettingsConfig: 'null')}
   {sh 'mvn test'}}
 stage('deploy to tomcat')
 {steps
  {sshagent(['tomcat']) 
  { sh 'scp -o StrictHostKeyChecking=no src=*/target/*.war dest=ec2-user@172.31.28.106:/usr/share/tomcat/webapp'}}
}
  
}
}

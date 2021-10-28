pipeline
{
    agent any
    stages
{
    stage('scm chekout')
    {steps{git branch: 'master', url: 'https://github.com/vrk7757/maven-project.git'} }
     
    stage('build the code & execute test cases')
    {
        parallel
        {
            stage('execute build')
    {steps 
     {withMaven(jdk:'java-home', maven:'maven-home')
           {sh 'mvn package'}}}
    
    stage('execute test cases')
    {steps {withMaven(jdk: 'java-home', maven: 'maven-home')
            {sh 'mvn test'}}}
    }
    }
    stage('docker build and create docker image')
    {steps{sh 'docker build -t vrk7757/dockercicd:01 .'}}
}
}

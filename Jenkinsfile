pipeline
{
    agent any
    stages
{
    stage('scm chekout')
    { steps{git branch: 'master', url: 'https://github.com/vrk7757/maven-project.git'} }
    stage ('build and run test cases')
{
    parallel
{
    stage('build the code')
    {steps{withMaven(jdk: 'java-home', maven: 'maven-home')
               {sh 'mvn package'}}
    }
    stage('execute test cases')
    {steps {withMaven(jdk: 'java-home', maven: 'maven-home')
               {sh 'mvn package'}}
    }
   
}
}    
}
}

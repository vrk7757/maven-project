pipeline {
    agent any
    stages {  
        stage ('SCM Checkout-clone-my-code') {
            steps {
               git branch: 'ci-cd-pipeline', url: "https://github.com/prakashk0301/maven-project"
         }
        }
    
        stage ('Compile Stage') {
            steps {
                withMaven(jdk: 'jdk-1.8', maven: 'my_maven') 
                {   
                    sh 'mvn compile' 
                }
               }
              }
                                
            
        
         stage ('Testing Stage') {
            steps {
                withMaven(jdk: 'jdk-1.8', maven: 'my_maven')
                {
                    sh 'mvn test'
                }
               }            
              }

        
        stage ('install Stage') {
            steps {
                withMaven(jdk: 'jdk-1.8', maven: 'my_maven')
                {
                    sh 'mvn install'
                }                                 
              }
            }

    }      
}

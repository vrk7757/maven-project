#example of conditions using when 
#https://www.jenkins.io/blog/2017/01/19/converting-conditional-to-pipeline/  refer the link for more info

pipeline {
    agent any
    stages {
        stage('Example Build') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Example Deploy') {
            when {
                branch 'production'
            }
            steps {
                echo 'Deploying'
            }
        }
    }
}

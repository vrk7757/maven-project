pipeline
{
agent any
stages
{
stage('scm checkout')
{steps{sh 'echo download the code'}}
stage('build the code')
{steps{sh 'echo code is building'}}
stage('deploy to dev env')
{steps{sh 'echo deploying to dev'}}
stage('approve qa deployement')
{steps{'input 'proceed or abort''}}
stage('deploy to qa')
{steps{sh 'echo deply to qa'}}
}
}

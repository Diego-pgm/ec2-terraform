pipeline{
    agent any
    stages{
        stage('Initialize terraform'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Plan'){
            steps{
                sh 'terraform plan'
            }
        }
    }
}
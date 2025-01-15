pipeline{
    agent any
    stages{
        stage('Initialize terraform'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Delete instance'){
            steps{
                script {
                    def userInput = input(
                        id: 'userApproval',
                        message: 'Do you want to delete the infrastructure created?',
                        parameters: [
                            choice(name: 'Delete', choices: ['yes', 'no'])
                        ]

                    )

                    if (userInput == 'yes'){
                        sh terraform destroy --auto-approve
                    }
                }
            }
        }
    }
}
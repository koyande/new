pipeline{
    agent any
    tools {
        terraform 'terraform-13'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'github', url: 'https://github.com/koyande/new'
            }
        }
        stage('Terraform Init'){
            steps{
                sh label: '', script: 'terraform init'
            }
        }
        stage('Terraform Apply'){
            steps{
                sh label: '', script: 'terraform apply --auto-approve'
            }
        }
    }
}

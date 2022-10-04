pipeline{
    agent any
    tools {
        terraform 'terraform'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git 'https://github.com/Rajesh2199/samplenodejs-app.git'
            }
        }

        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
         stage('Terraform Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}

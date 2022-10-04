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
        stage('Start the Docker application){
              sh"""
              #!/bin/bash
              ssh -p '$PASSWORD' ssh -o StrictHostkeyChecking=no $USERNAME@        /bin/bash <<EOF
              cd /home/
              git clone https://github.com/Rajesh2199/samplenodejs-app.git
              git pull
              chmod +x docker.sh
              sudo chmod 666 /var/run/docker.sock
              sh docker.sh docker_check
              sh docker.sh docker_start
              exit 0
              << EOF
              """
              }     
    }
}

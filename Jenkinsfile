pipeline {
    agent any
     stages {
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('Checkov') {
            steps{
                sh 'checkov -f ec2.tf subnet.tf nat.tf'
            }
        }
     }

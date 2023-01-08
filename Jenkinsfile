pipeline {
    agent any
     stages {
        stage('Checkov') {
            steps{
                sh 'checkov -f ec2.tf subnet.tf nat.tf'
            }
        }
     }
}

pipeline {
    agent any
     stages {
        stage('Checkov') {
            steps{
                cleanWs()
                sh 'checkov -f /ec2.tf'
            }
        }
     }
}

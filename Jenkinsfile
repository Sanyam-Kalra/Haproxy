pipeline {
    agent any
     stages {
        stage('Checkov') {
            steps{
               sh "pip install checkov"
                sh 'checkov -f ec2.tf'
            }
        }
     }
}

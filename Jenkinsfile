pipeline {
    agent any
     stages {
        stage('Checkov') {
            steps{
               sh "pipenv run pip install checkov"
sh "pipenv run checkov -d . --use-enforcement-rules -o cli -o junitxml --output-file-path console,results.xml --repo-id example/terragoat --branch master"
                sh 'checkov -f ec2.tf'
            }
        }
     }
}

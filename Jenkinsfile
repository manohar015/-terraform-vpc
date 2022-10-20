pipeline {
    agent any    
    parameters {
         choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Chose Environment') 
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"  
                sh "terraform init -backend-config=env-${ENV}/"
                    
            }
        }
        stage('Hello') {
            when { branch 'master' }
            environment {
                ENV_URL = "stage.google.com"
            }
            input {
                message "Should we continue?"
                ok "Yes, we should."
                submitter "alice,bob"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
            }
            steps {
                 sh "echo hai"  
                 sh "echo Environment URL is ${ENV_URL}"
                 sh "env" 
                 sh "echo I will be running maven command"
                 sh "mvn -v"
            }
        }
    }
}


// Environment variables for SSH UserName & Password
// SSH_CRED_USR
// SSH_CRED_PSW
// Added some commits 
// Demonstrating the PollSCM  : 19 


pipeline {
    agent any    
    parameters {
         choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Chose Environment') 
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"  
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
                    
            }
        }

        stage('Terraform Plan') {
            steps {
                sh "terraform [init] -backend-config=env-${ENV}/${ENV}-backend.tfvars"
                    
            }
        }

    }
}


// Environment variables for SSH UserName & Password
// SSH_CRED_USR
// SSH_CRED_PSW
// Added some commits 
// Demonstrating the PollSCM  : 19 


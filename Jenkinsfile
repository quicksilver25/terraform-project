pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Choose Terraform action'
        )
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {

        stage('Cleanup Workspace') {
            steps {
                sh 'rm -rf .terraform terraform.tfstate*'
            }
        }

        stage('Initialize') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }

        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan for Apply') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                sh 'terraform plan'
            }
        }

        stage('Approval for Apply') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                input message: "Approve Deployment?", ok: "Yes, deploy"
            }
        }

        stage('Apply') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Plan for Destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                sh 'terraform plan -destroy'
            }
        }

        stage('Approval for Destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                input message: "Are you sure you want to destroy?", ok: "Yes, destroy"
            }
        }

        stage('Destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

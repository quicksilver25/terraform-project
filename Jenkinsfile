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
        AWS_DEFAULT_REGION    = 'ap-south-2'
    }

    stages {

        stage('Cleanup Workspace') {
            steps {
                sh 'rm -rf .terraform terraform.tfstate* tfplan'
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
                sh 'terraform plan -var-file=terraform.tfvars -out=tfplan'
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
                sh 'terraform apply -auto-approve tfplan'
            }
        }

        stage('Plan for Destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                sh 'terraform plan -destroy -var-file=terraform.tfvars'
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
                sh 'terraform destroy -auto-approve -var-file=terraform.tfvars'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

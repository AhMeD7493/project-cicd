pipeline {
    agent any

    environment {
        PROJECT_DIR = "${WORKSPACE}"
    }

    stages {
        stage('Setup Python Virtual ENV') {
            steps {
                script {
                    try {
                        sh '''
                        chmod +x envsetup.sh
                        ./envsetup.sh
                        '''
                    } catch (Exception e) {
                        error "Failed to set up Python virtual environment: ${e}"
                    }
                }
            }
        }

        stage('Setup Gunicorn') {
            steps {
                script {
                    try {
                        sh '''
                        chmod +x gunicorn.sh
                        ./gunicorn.sh
                        '''
                    } catch (Exception e) {
                        error "Failed to set up Gunicorn: ${e}"
                    }
                }
            }
        }

        stage('Setup Nginx') {
            steps {
                script {
                    try {
                        sh '''
                        chmod +x nginx.sh
                        ./nginx.sh
                        '''
                    } catch (Exception e) {
                        error "Failed to set up Nginx: ${e}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo '✅ Deployment completed successfully!'
        }
        failure {
            echo '❌ Deployment failed! Check the logs for details.'
        }
    }
}


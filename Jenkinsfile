pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/your-repo/vue-app.git'
            }
        }

        stage('Install Node.js') {
            steps {
                sh 'curl -sL https://deb.nodesource.com/setup_14.x | bash -'
                sh 'apt-get install -y nodejs'
                sh 'npm install -g npm@latest'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm ci'
            }
        }

        stage('Lint') {
            steps {
                sh 'npm run lint'
            }
        }

        stage('Test') {
            steps {
                sh 'npm run test:unit'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

    }
}

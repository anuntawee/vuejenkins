pipeline {
    agent any

    stages {
        
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/anuntawee/vuejenkins.git'
            }
        }
           stage('Install Node.js') {
            steps {
              sh 'curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -'
               sh 'sudo apt install nodejs -y'
           
            }
        }
         stage('NPM Node.js') {
            steps {
                   sh 'npm i'
                sh 'npm install'
          
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm ci'
            }
        }
   
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}

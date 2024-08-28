pipeline {
    agent any

    stages {
        
        // stage('Checkout') {
        //     steps {
        //         git branch: 'main', url: 'https://github.com/anuntawee/vuejenkins.git'
        //     }
        // }
           stage('Build docker') {
            steps {
                sh'''
                docker build -t my-vue .
                docker image ls 
                '''
            }
        }
        //  stage('NPM Node.js') {
        //     steps {
        //            sh 'npm i'
        //         sh 'npm install'
          
        //     }
        // }
        // stage('Install Dependencies') {
        //     steps {
        //         sh 'npm ci'
        //     }
        // }
   
        // stage('Build') {
        //     steps {
        //         sh 'npm run build'
        //     }
        // }
    }
}

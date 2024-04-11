pipeline {
    agent any
    
    stages {
        stage('build') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
        
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('docker build') {
            steps {
                sh 'docker build -t dilip19681968/Amazon:war .'
            }
        }

        stage('docker push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubUser')]) {
                    sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
                    sh "docker push dilip19681968/Amazon:war"
                }
            }
        }
    }
}

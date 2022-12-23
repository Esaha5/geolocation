pipeline {

    triggers {
        pollSCM '* * * * *'
    }
    agent any
    tools {
        maven 'M2_HOME'
    }
  
    stages {
        stage('maven package') {
            steps {
                sh'mvn clean'
                sh'mvn install'
                sh'mvn package'
            }
        }
        stage('test') {
            steps {
                sh'mvn test'
            }
        }
        stage('Hello') {
            steps {
                echo 'Hello Michael!!!'
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploy'
            }
        }
    }
}
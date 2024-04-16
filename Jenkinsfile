pipeline {

    agent any
    tools {
        maven 'M2_HOME'
    }
    stages {
        stage('maven build') {
            steps{
                stage{
                    sh 'mvn clean install package'
                }
            }

        }
    }



}
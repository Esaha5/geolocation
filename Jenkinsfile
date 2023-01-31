pipeline {

    triggers {
        pollSCM '* * * * *'
    }
    agent any
    tools {
        maven 'M2_HOME'
    }
  
    stages {
        stage("build & SonarQube analysis") {
            agent any
            steps {
              withSonarQubeEnv('SonarServer') {
                  sh 'mvn sonar:sonar -Dsonar.projectKey=Esaha4_geolocation -Dsonar.java.binaries=.'
              }
            }
          }
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
        stage('deploy') {
            steps {
                echo 'deployement'
            }
        }
        }
   
}

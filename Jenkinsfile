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
                  sh 'org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.1.2184:sonar'
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

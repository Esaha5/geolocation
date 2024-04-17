pipeline {

    agent any
    tools {
        maven 'M2_HOME'
    }
    stages{
        stage('maven build'){
            steps{
                sh 'mvn clean install package'
            }
        }
        stage('upload artifact'){
            steps{
                script{
                def POM = readMavenPom file: 'pom.xml'
                nexusArtifactUploader artifacts: 
                [[artifactId: "${POM.artifactId}", 
                 classifier: '', 
                  file: "target/${POM.artifactId}-${POM.version}.${POM.packaging}", 
                   type: "${POM.packaging}"]], 
                    credentialsId: 'NexusID', 
                     groupId: "${POM.groupId}", 
                      nexusUrl: '192.168.56.20:8081', 
                       nexusVersion: 'nexus3', 
                        protocol: 'http', 
                         repository: 'biom', 
                          version: "${POM.version}"
                }
            }
        }
        stage('List the contain'){
            steps{
                sh 'ls'
            }
        }
    }

}
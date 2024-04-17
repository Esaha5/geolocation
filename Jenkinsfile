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
                [[artifactId: "${POM.ARTIFACTID}", 
                 classifier: '', 
                  file: "target/${POM.ARTIFACTID}-${POM.VERSION}.${POM.PACKAGING}", 
                   type: "${POM.PACKAGING}"]], 
                    credentialsId: 'NexusID', 
                     groupId: '${POM_GROUPID}', 
                      nexusUrl: '192.168.56.20:8081', 
                       nexusVersion: 'nexus3', 
                        protocol: 'http', 
                         repository: 'biom', 
                          version: '${POM.VERSION}'
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
pipeline {
    agent any

    stages {
    stage ('SCM Stage') {
                steps {
                    withMaven(maven : 'maven_3_6_3')  {
                        echo 'Start of the SCM Stage '
                        git 'https://github.com/nomizo-iox/PollingApp-BE'
                        echo 'End of the SCM stage'
                    }
                }
            }

        stage ('Compile Stage') {
            steps {
                withMaven(maven : 'maven_3_6_3')  {
                    echo 'Start of the compile Stage '
                    sh 'mvn clean compile'
                    echo 'End of the compile stage'
                }
            }
        }

        stage ('SonarCloud Stage') {
                    steps {
                        withMaven(maven : 'maven_3_6_3')  {
                            echo 'Start of the code smell Stage '
                            sh 'mvn verify sonar:sonar'
                            echo 'End of the code smell stage'
                        }
                    }
                }

        stage ('Testing Stage') {
            steps {
             withMaven(maven : 'maven_3_6_3')  {
                   echo 'Start of the Testing Stage '
                   sh 'mvn test'
                   echo 'End of the Testing stage'
                }
            }
        }

        stage ('Deployment Stage') {
            steps {
             withMaven(maven : 'maven_3_6_3')  {
                   echo 'Start of the Deployment Stage '
                   sh 'mvn deploy'
                   echo 'End of the Deployment stage'
                }
             }
          }
       }
    }
}

pipeline {
    agent any

    stages {
        stage ('Compile Stage') {
            steps {
                withMaven(maven : 'maven_3_6_3')  {
                    echo 'Start of the Compile Stage '
                    sh 'mvn clean compile'
                    echo 'End of the compile stage'
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
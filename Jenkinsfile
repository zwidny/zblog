 pipeline {
        agent any
        stage("Docker build") {
            steps {
             sh "docker build -t zwidny/zblog ."
            }
        }
        stages {
              stage("Run Unit test"){
                 steps{
                     sh "./src/manage.py test"
                 }
             }
        }
 }

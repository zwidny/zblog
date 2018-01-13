 pipeline {
        agent any
        stage("Docker build") {
            steps {
             sh "docker build -t zwidny/zblog ."
            }
        }
        stage("Docker push") {
            steps {
             sh "docker push zwidny/zblog"
            }
        }
        stage("Deploy to staging") {
            steps {
                sh "docker run -d -v /tmp:/tmp -e CONFIG_DIR='zblog' --name zblog zwidny/zblog"
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

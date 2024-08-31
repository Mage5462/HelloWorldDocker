#!groovy
pipeline {
    agent any
   stages {     
    stage('Docker version check') {
            steps {
                bat 'docker -v'
            }
        }
	stage('Docker build tag') {
            steps {
                bat 'docker build -t nginx-helloworldpipeline .'
				bat 'docker tag nginx-helloworldpipeline mageshwari072/nginx-helloworldpipeline:1.0'
            }
        }
	stage('Docker push image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          bat "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          bat 'docker push mageshwari072/nginx-helloworldpipeline:1.0'
        }
            }
        }
		
	stage('Docker run hellow world application') {
            steps {
                bat 'docker run -p 8087:80 nginx-helloworldpipeline'
            }
        }
	}
 }

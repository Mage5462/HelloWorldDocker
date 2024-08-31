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
				bat 'docker tag nginx- helloworldpipeline mageshwari072/nginx-helloworldpipeline:1.0'
            }
        }
	stage('Docker push image') {
            steps {
                bat 'docker push mageshwari072/nginx- helloworldpipeline:1.0'
            }
        }
	}
 }

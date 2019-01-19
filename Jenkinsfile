pipeline {
  environment {
    registry = "medineshkatwal/jenkins-docker-pipeline"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  tools { nodejs "nodejs" }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/k2glyph/jenkins-docker-pipeline.git'
      }
    } 
    stage('Install Dependency') {
       steps {
         sh 'npm install'
       }
    }
     stage('Build image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
     stage('Push Image to Registry') {
      steps {
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
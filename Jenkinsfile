pipeline {
  agent {
      dockerfile true
  }
  stages {
    stage('setup') {
        steps {
            sh 'env'
        }
    }
    stage('Stage1') {
      steps {
        echo 'Hello World!'
      }
    }
  }
}
pipeline {
  agent any

  stages {
    stage('testing env var') {
      steps {
        sh script: 'env', returnStdout: true
      }
    }
  }
}

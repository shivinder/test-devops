pipeline {
  agent any

  stages {
    stage('testing env var') {
      steps {
        sh script: 'printenv', returnStdout: true
      }
    }
  }
}

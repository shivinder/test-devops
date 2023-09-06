pipeline {
  agent any

  stages {
    stage('testing env var') {
      steps {
        echo sh(script: 'printenv', returnStdout: true)
      }
    }
  }
}

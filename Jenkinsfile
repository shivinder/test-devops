pipeline {
  agent any

  stages {
    stage('testing env var') {
      steps {
        echo sh(cript: 'printenv', returnStdout: true)
      }
    }
  }
}

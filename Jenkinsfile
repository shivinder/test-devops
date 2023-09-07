pipeline {
  agent any

  stages {
    stage('clean up the workspaces') {
      steps {
        // find "$JENKINS_WORKSPACE_DIR" -type d -mtime +30 -exec rm -rf {} \;
        echo "${env.WORKSPACE}"
        // sh script: 'find ${env.WORKSPACE} -type d -mtime +1 -exec rm -Rf {} ;', returnStdout: true
        sh script: "find ${env.WORKSPACE} -maxdepth 1 -type d -mtime -1 -print0"
        sh(script: 'env')
      }
    }
  }
}

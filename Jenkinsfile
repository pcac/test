pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('done') {
      parallel {
        stage('done') {
          steps {
            echo 'done'
          }
        }
        stage('') {
          steps {
            sh 'docker version'
          }
        }
      }
    }
  }
}
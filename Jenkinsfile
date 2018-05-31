pipeline {
  agent {
    docker {
      image 'golang:1.10.2'
      args '-v $PWD:/go'
    }

  }
  stages {
    stage('build') {
      parallel {
        stage('pwd') {
          steps {
            sh 'pwd'
          }
        }
        stage('list') {
          steps {
            sh 'ls -alh'
          }
        }
        stage('run build') {
          steps {
            sh 'go build app.go'
          }
        }
      }
    }
  }
}
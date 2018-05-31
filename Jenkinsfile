pipeline {
  agent {
    docker {
      args '-v $PWD:/go'
      image 'golang:1.10.2-alpine3.7'
    }

  }
  stages {
    stage('build') {
      steps {
        sh '''ls -l
go build app.go
ls -l'''
      }
    }
  }
  environment {
    GOPATH = '/go'
  }
}
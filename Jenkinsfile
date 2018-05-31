pipeline {
  agent {
    docker {
      image 'golang:1.10.2'
      args '-v $PWD:/go'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'go build app.go'
      }
    }
    stage('done') {
      steps {
        echo 'done'
      }
    }
  }
  environment {
    GOPATH = '/go'
  }
}
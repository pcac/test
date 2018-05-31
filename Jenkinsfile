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
        sh 'pwd'
        sh 'ls -al'
        sh 'go build app.go'
      }
    }
    stage('done') {
      steps {
        echo 'done'
      }
    }
  }
}
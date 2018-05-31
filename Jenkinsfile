pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        dockerNode(dockerHost: '192.168.18.1:2375', image: 'golang:latest')
      }
    }
  }
}
pipeline {
  agent any
  stages {
    stage('') {
      steps {
        dockerNode(dockerHost: 'unix:///var/run/docker.sock', image: 'golang:latest')
      }
    }
  }
}
pipeline {
  agent any
  stages {
    stage('create pack') {
      steps {
        sh 'tar -czf pack.tar.gz Dockerfile app.go favicon.ico'
      }
    }
    stage('build') {
      steps {
        sh '''curl -fsSL \\
 -X POST \\
 -H "Content-Type:application/x-tar" \\
 --data-binary \'@pack.tar.gz\' \\
 \'http://192.168.18.1:2375/build?t=test:1.0.1\''''
      }
    }
  }
}
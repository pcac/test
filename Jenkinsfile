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
    --cacert /run/secrets/ctasia.com.crt \\
    --cert /run/secrets/client.crt \\
    --key /run/secrets/client_np.key \\
    --data-binary \'@pack.tar.gz\' \\
    \'https://docker.ctasia.com:2376/build?t=hub.ctasia.com/test:1.0.0\'
'''
      }
    }
  }
}
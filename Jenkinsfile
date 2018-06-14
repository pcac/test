pipeline {
  agent any
  stages {
    stage('create package') {
      steps {
        sh 'tar -czf pack.tar.gz Dockerfile app.go favicon.ico'
      }
    }
    stage('build image') {
      steps {
        sh '''curl -fsSL \\
    -X POST \\
    -H "Content-Type:application/x-tar" \\
    --cacert /run/secrets/ctasia.com.crt \\
    --cert /run/secrets/client.crt \\
    --key /run/secrets/client_np.key \\
    --data-binary \'@pack.tar.gz\' \\
    \'https://docker.ctasia.com:2376/build?t=hub.ctasia.com/test:1.0.1\'
'''
      }
    }
    stage('push to registry') {
      steps {
        sh '''curl -fsSL \\
    -X POST \\
    -H "X-Registry-Auth:eyJ1c2VybmFtZSI6InB1bm5hcGl0YyIsInBhc3N3b3JkIjoicHVubmFwaXRjIiwiZW1haWwiOiJwdW5uYXBpdGNAY3Rhc2lhLmNvbSIsInNlcnZlcmFkZHJlc3MiOiJodWIuY3Rhc2lhLmNvbSJ9" \\
    --cacert /run/secrets/ctasia.com.crt \\
    --cert /run/secrets/client.crt \\
    --key /run/secrets/client_np.key \\
    \'https://docker.ctasia.com:2376/images/hub.ctasia.com/test/push?tag=1.0.1\'
'''
      }
    }
  }
}
pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('bash script') {
      steps {
        sh '''#!/bin/bash
ls -al
exit 0'''
      }
    }
  }
}
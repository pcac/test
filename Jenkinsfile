node {
    checkout scm

    docker.withServer('tcp://192.168.56.3:2375', 'pcac-vm') {
        docker.image('golang:1.10.2').withRun('go version') {
            /* do things */
        }
    }
}

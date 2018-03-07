pipeline {
  agent any
  stages {
    stage('pipeline test file') {
      steps {
        writeFile(file: 'Test', text: 'This is a pipeline test')
      }
    }
    stage('git pull') {
      steps {
        sh 'git pull'
      }
    }
    stage('') {
      steps {
        git(poll: true, branch: 'master', url: 'https://github.com/aphexlog/.environment.git')
      }
    }
  }
}
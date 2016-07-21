
node('ubuntu') {
  stage 'Build'
    sh 'bash ./build.sh'
}

node('webdriver'){
  stage 'Automated Tests'
      withEnv(['WORKSPACE=c:/jenkins/workspace/test_executor_$EXECUTOR_NUMBER']) {
        bat 'echo %WORKSPACE%'
        git url: 'git@github.com:Wikia/selenium-tests.git'
    }
}

node('ubuntu'){
  stage 'Unit Tests'
    unitTests {}

  stage 'Archive'
    archive '*.xml'
}

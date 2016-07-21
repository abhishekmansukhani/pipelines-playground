
node {
  stage 'Build'
    sh 'bash ./build.sh'
  stage 'Automated Tests'
    node('webdriver'){
      withEnv(['WORKSPACE=c:/jenkins/workspace/test_executor_$EXECUTOR_NUMBER']) {
      bat: "echo %WORKSPACE%"
    }
  }

  stage 'Unit Tests'
    unitTests {}

  stage 'Archive'
    archive '*.xml'
}

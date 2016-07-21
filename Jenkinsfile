
node('ubuntu') {
  stage 'Build'
    sh 'bash ./build.sh'
}

node('webdriver'){
  stage 'Automated Tests'
      withEnv(['WORKSPACE=c:/jenkins/workspace/test_executor_$EXECUTOR_NUMBER']) {
        bat 'echo %WORKSPACE%'
        checkout([$class: 'GitSCM', branches: [[name: '${branch}']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'e3b68f9c-9a58-4c10-9f5b-b6f3754322fb', url: 'git@github.com:Wikia/selenium-tests.git']]])
    }
}

node('ubuntu'){
  stage 'Unit Tests'
    unitTests {}

  stage 'Archive'
    archive '*.xml'
}

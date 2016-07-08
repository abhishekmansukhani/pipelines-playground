
node {
  timeout(time: 900, unit: 'MILLISECONDS') {
    stage 'Stage 1'
      git url: 'https://github.com/ludwikkazmierczak/pipelines-playground'
      sh 'bash ./build.sh'
  }

  stage 'Stage 2'
    echo 'Hello World!'
}

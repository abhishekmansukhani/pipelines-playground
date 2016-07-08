
node {
  stage 'Build'
    git url: 'https://github.com/ludwikkazmierczak/pipelines-playground'
    sh 'bash ./build.sh'

  stage 'Test'
    echo 'Hello World!'

  stage 'Archive'
    archive includes: '*.xml'
}


node {
  stage 'Build'
    git url: 'https://github.com/ludwikkazmierczak/pipelines-playground'
    sh 'bash ./build.sh'

  stage 'Test'
    sh 'bash ./build.sh'

  stage 'Archive'
    archive includes: '*.xml'
}

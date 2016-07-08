
node {
  stage 'Build'
    git url: 'https://github.com/ludwikkazmierczak/pipelines-playground'
    sh 'bash ./build.sh'

  stage 'Test'
    sh 'bash ./test.sh'

  stage 'Archive'
    archive '*.xml'
}

def splits = splitTests([$class: 'CountDrivenParallelism', size: 2])
def branches = [:]
for (int i = 0; i < splits.size(); i++) {
  def exclusions = splits.get(i);
  branches["split${i}"] = {
    node {
      sh 'bash ./test.sh'
    }
  }
}
parallel branches

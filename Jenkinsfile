
node {
  stage 'Build'
    git url: 'https://github.com/ludwikkazmierczak/pipelines-playground'
    sh 'bash ./build.sh'

  stage 'unit Tests'
    unitTests {} 

  stage 'Test'
    def splits = [1, 2, 3, 4]
    def branches = [:]
    for (int i = 0; i < splits.size(); i++) {
      def exclusions = splits.get(i);
      branches["split${i}"] = {
        node {
          git url: 'https://github.com/ludwikkazmierczak/pipelines-playground'
          sh 'bash ./test.sh'
          sh 'echo "${i}"'
        }
      }
    }
    parallel branches

  stage 'Archive'
    archive '*.xml'
}

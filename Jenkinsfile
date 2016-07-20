
node {
  stage 'Build'
    sh 'bash ./build.sh'

  stage 'Test'
    def splits = [1, 2, 3, 4]
    def branches = [:]
    for (int i = 0; i < splits.size(); i++) {
      def exclusions = splits.get(i);
      branches["split${i}"] = {
        node {
          sh 'bash ./test.sh'
          sh 'echo "${i}"'
          build job: sustaining-wam-page-prod
        }
      }
    }
    parallel `branches`

  stage 'Archive'
    archive '*.xml'
}

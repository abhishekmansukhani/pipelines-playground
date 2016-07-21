
node {
  stage 'Build'
    sh 'bash ./build.sh'

  stage 'Clean'
    build job: "sustaining-wam-page-prod"

  stage 'Unit Tests'
    unitTests {}

  stage 'Test'
    def splits = [1, 2, 3, 4]
    def branches = [:]
    for (int i = 0; i < splits.size(); i++) {
      def exclusions = splits.get(i);
      branches["split${i}"] = {
        node {
          build job: "sustaining-wam-page-prod"
        }
      }
    }
    parallel branches

  stage 'Archive'
    archive '*.xml'
}

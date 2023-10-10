pipeline {
  environment {
    image = "library/alpine"
    tag = "3.9"
    }
agent any
stages {
  stage('Test NV Scan Images') { 
    steps {
      //nv jenkins plugin conf
      neuvector nameOfVulnerabilityToExemptFour: '',
      nameOfVulnerabilityToExemptOne: '', 
      nameOfVulnerabilityToExemptThree: '', 
      nameOfVulnerabilityToExemptTwo: '', 
      nameOfVulnerabilityToFailFour: '', 
      nameOfVulnerabilityToFailOne: '', 
      nameOfVulnerabilityToFailThree: '', 
      nameOfVulnerabilityToFailTwo: '', 
      numberOfHighSeverityToFail: '1', 
      numberOfMediumSeverityToFail: '3', 
      registrySelection: 'docker', 
      repository: "${env.image}", 
      scanLayers: true,
      tag: "${env.tag}"
      }
    }
  } 
}

pipeline {
agent any
tools {
  terraform 'terraform'
}
stages{
stage("checkout from git"){
steps{
checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/dnyanesh12345678/jenkins-terraform.git']]])
}
}
stage("intialize terraform pluign"){
steps{
sh "terraform init"
}
}
stage("create instance"){
steps{
sh "terraform apply --auto-approve"
}
}
stage("delete instance"){
steps{
sh "terraform destroy --auto-approve"
}
}
}
}

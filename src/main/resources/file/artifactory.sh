

## 1. echo "deb https://jfrog.bintray.com/artifactory-debs bionic main" | sudo tee -a /etc/apt/sources.list
## 2. curl https://bintray.com/user/downloadSubjectPublicKey?username=jfrog | sudo apt-key add -
## 3. sudo apt-get update
## 4. sudo apt-get install jfrog-artifactory-oss
## 5.
# Reference: https://dzone.com/articles/butler-cli-exportimport-jenkins-plugins-amp-jobs

# Download and install
#wget https://s3.us-east-1.amazonaws.com/butlercli/1.0.0/linux/butler
#chmod +x butler
#mv butler /usr/local/bin/

# To export Jenkins jobs, you need to provide the URL of the source Jenkinsinstance:
butler plugins export --server localhost:8080 --username jenkins --password jenkins

# To export Jenkins jobs, just provide the URL of the source Jenkinsserver:
butler jobs export --server localhost:8080 --username jenkins --password jenkins


# to import the plugins to the new Jenkins instance, use the command below with the URL of the Jenkins target instance as an argument:
butler plugins import --server localhost:8080 --username jenkins --password jenkins

# Now, to import the jobs to the new Jenkins instance, issue the following command:
butler jobs import --server localhost:8080 --username admin --password admin



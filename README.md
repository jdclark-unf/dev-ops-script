# setup
* create an ec2.  
* update the ec2 with `sudo yum update -y`  
* install git with `sudo yum install git -y`  
* use git to clone this repo with the script to install the rest of the software `git clone https://github.com/btkruppa/dev-ops-script.git`  
* navigate to the repo directory `cd dev-ops-script`
* run the script to install required software on the ec2, navigate into the repo and run `sh installv2.sh`
* it will make you select the version for java and javac
# jenkins
* jenkins should now be running on port 8080 of the ec2 with no addition to the url after the port
# tomcat
* there will be a separate tomcat on port 8090 that you can deploy wars to

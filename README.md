# setup
* create an ec2.  
* update the ec2 with `sudo yum update -y`  
* install git with `sudo yum install git -y`  
* use git to clone this repo with the script to install the rest of the software `git clone https://github.com/btkruppa/dev-ops-script.git`  
* navigate to the repo directory `cd dev-ops-script`
* run the script to install required software on the ec2, navigate into the repo and run `sh install.sh`
* I have deprecated the v2 scripts since they were using software hosted on my s3 bucket that i made private
* it will make you select the version for java and javac
* after it runs if you want to do mvn commands exit and re-enter the ec2. If someone can get this better that would be great.
# jenkins
* jenkins should now be running on port 8080 of the ec2 with no addition to the url after the port
* to get the password run `sudo cat /var/lib/jenkins/secrets/initialAdminPassword` or if the path on jenkins says differently use the path it specifies
* if you need to stop jenkins, you can run `sudo service jenkins stop`
* if your jenkins crashes and you need to restart it you can run `sudo service jenkins start`
# tomcat
* there will be a separate tomcat on port 8090 that you can deploy wars to

# demo jenkins pipeline
For an example of deploying a spring boot and angular project with a Jenkinsfile go to [this repo](https://github.com/btkruppa/angular-spring-boo-dev-ops)

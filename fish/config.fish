abbr -a -g -- code1 'cd /Users/keshav/code-base/'
abbr -a -g -- gco 'git checkout'

abbr -a -g -- god 'ssh 10.1.9.11'
abbr -a -g -- stgod 'ssh 10.3.0.10'
abbr -a -g -- npgod 'ssh 10.253.9.11'
abbr -a -g -- warehouse1 'ssh 10.3.2.101'
abbr -a -g -- oldbuild 'ssh 10.253.205.100'
abbr -a -g -- db1 'ssh 10.1.14.241'
abbr -a -g -- db2 'ssh 10.1.14.242'
abbr -a -g -- db3 'ssh 10.1.14.243'
abbr -a -g -- db4 'ssh 10.1.14.244'
abbr -a -g -- db5 'ssh 10.1.14.245'
abbr -a -g -- db6 'ssh 10.1.14.246'
abbr -a -g -- pdb 'ssh 10.1.14.200'
abbr -a -g -- pdb-slave 'ssh 10.1.14.201'

abbr -a -g -- salt 'ssh god sudo salt'

abbr -a -g -- awsjumphost 'eval $(ssh-agent); ssh-add;  ssh -A keshav@35.172.46.241'
abbr -a -g -- jumphost 'ssh -A keshav@jumphost.banbazaar.com'

abbr -a -g -- coke 'ssh -i ~/.pem/keshav-test.pem ubuntu@54.69.185.79'
abbr -a -g -- coke2 'ssh -i ~/.pem/keshav-test.pem ubuntu@35.164.240.165'
#abbr -a -g -- coke3 'ssh -i ~/.pem/keshav-test.pem ubuntu@35.164.240.165'

#vpn
#abbr -a -g -- vup 'sudo ifup officevpn'
#abbr -a -g -- vdown 'sudo ifdown officevpn'

#maven
abbr -a -g -- mcompileo 'mvn clean compile install -DskipTests true -o'
abbr -a -g -- mvnsto 'mvn -DskipTests true -o'
abbr -a -g -- mcompile 'mvn clean compile install -DskipTests true'
abbr -a -g -- mvnst 'mvn -DskipTests true'

#git
abbr -a -g -- gfc 'git fetch central'
abbr -a -g -- grm 'git rebase master'
abbr -a -g -- gr 'git rebase'
abbr -a -g -- gcom 'git checkout master'
abbr -a -g -- glm 'git log master'
abbr -a -g -- gpo 'git push origin'
abbr -a -g -- gpk 'git push keshav-modi'
abbr -a -g -- gsffo 'git submodule foreach "git fetch origin"'
abbr -a -g -- gsf 'git submodule foreach'
abbr -a -g -- gpr 'git pull --rebase'


set -x MAVEN_OPTS "-Xms512m -Xmx1024m -XX:MaxPermSize 512m -Dhttps.protocols TLSv1.2"
set -x JAVA_HOME /opt/java
set -x JAVA8_HOME /opt/java8
set -x GROOVY_HOME /opt/groovy
set -x GRAILS_HOME /opt/grails
set -x CATALINA_HOME /opt/tomcat
set -x MAVEN_HOME /opt/maven
set -x ANT_HOME /opt/ant
set -x LEIN_HOME /opt/lein
set -x SBT_HOME /opt/sbt
set -x SCALA_HOME /opt/scala
set -x NODEJS_HOME /opt/nodejs
set -x STUDIO_JDK /opt/java8
set -x STUDIO_HOME /opt/studio
set -x CODE_BASE_PATH ~/code-base/bb-container
set -x PATH $PATH:$JAVA_HOME/bin:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$CATALINA_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$LEIN_HOME:$SBT_HOME/bin:$SCALA_HOME/bin:$NODEJS_HOME/bin:$STUDIO_HOME/bin


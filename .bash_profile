if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=$HOME/bin:$HOME/Developer/apache-maven-3.0.3/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home`
export MAVEN_OPTS='-Xmn400m -Xms1024m -Xmx1024m -Xss1m -XX:PermSize=384m -XX:MaxPermSize=384m -Dcore.zookeeper=cosalpha:9331 -Dmedis_environment=test'


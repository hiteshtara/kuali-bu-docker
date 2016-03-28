
#! /bin/sh

docker run --rm   -v $(pwd):/project   -v /usr/tmp/.m2:/root/.m2   mukadder/kuali1698  clean compile  install -Dgrm.off=true -Dmaven.test.skip=true -Dclean-jsfrontend-node.off

cp /root/kiali/kuali-coeus/workspace/kc/coeus-webapp/target/coeus-webapp-1603.50-SNAPSHOT.war path/kc-dev.war

cp path/kc-dev.war SetupTomcat/

docker build -t mukadder/kuali_tomcat . 

docker run -d --name kuali_tomcat -h 159.203.170.32 --link kuali_db_mysql:kuali_db_mysql -p 8080:8080 mukadder/kuali_tomcat


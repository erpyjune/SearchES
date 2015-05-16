#!/bin/bash

echo "################################################################################################################################################"
echo "mvn clean"
echo "################################################################################################################################################"
mvn clean

echo "################################################################################################################################################"
echo "mvn install"
echo "################################################################################################################################################"
mvn install

echo "################################################################################################################################################"
echo "mvn package"
echo "################################################################################################################################################"
mvn package

echo "################################################################################################################################################"
echo "cp -f /Users/baeonejune/work/SummaryNode/SearchWeb/target/SearchES.war /Users/baeonejune/work/tomcat/tomcat/webapps"
echo "################################################################################################################################################"
cp -f /Users/baeonejune/work/SummaryNode/SearchWeb/target/SearchES.war /Users/baeonejune/work/tomcat/tomcat/webapps

# end

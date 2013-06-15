#!/bin/bash

echo '----------------- STARTING IMPORTNG REPOSITORIES !!!! ---------------------------------------------'

echo ' ---------------------------- WIKITEAMS ---------------------------------------------------------- '

echo '----------------- NEO4J IS ADVISED TO BE SHUTDOWN DOWN TEMPORARLY FOR THIS PROCESS ----------------'

echo '----------------- USAGE: ./import_git.sh nodes.csv relations.csv ----------------------------------'

mvn -e -X clean compile exec:java -Dexec.mainClass="org.neo4j.batchimport.Importer" -Dexec.args="/home/oskar/neo4j-community-1.9/data/graph.db $1 $2"

echo '----------------- FINISHED THE PROCESS ------------------------------------------------------------'
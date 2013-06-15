source ./settings.sh

mvn clean test-compile exec:java -Dexec.mainClass=org.neo4j.batchimport.ParallelImporter -Dexec.classpathScope=test -Dexec.args="/home/oskar/neo4j/data/graph.db ../repo.csv"

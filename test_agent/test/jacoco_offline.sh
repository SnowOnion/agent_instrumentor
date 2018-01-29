#!/bin/bash

LIBS=/home/ren/.m2/repository/com/fasterxml/jackson/core/jackson-annotations/2.3.0/jackson-annotations-2.3.0.jar:/home/ren/.m2/repository/com/fasterxml/jackson/core/jackson-core/2.3.1/jackson-core-2.3.1.jar:/home/ren/.m2/repository/com/fasterxml/jackson/core/jackson-databind/2.3.3/jackson-databind-2.3.3.jar:/home/ren/.m2/repository/com/ibm/icu/icu4j/58.2/icu4j-58.2.jar:/home/ren/.m2/repository/junit/junit/4.12/junit-4.12.jar:/home/ren/.m2/repository/org/abego/treelayout/org.abego.treelayout.core/1.0.3/org.abego.treelayout.core-1.0.3.jar:/home/ren/.m2/repository/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar:/home/ren/.m2/repository/org/antlr/antlr4-runtime/4.7.1/antlr4-runtime-4.7.1.jar:/home/ren/.m2/repository/org/antlr/antlr4/4.7.1/antlr4-4.7.1.jar:/home/ren/.m2/repository/org/antlr/ST4/4.0.8/ST4-4.0.8.jar:/home/ren/.m2/repository/org/glassfish/javax.json/1.0.4/javax.json-1.0.4.jar:/home/ren/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:/home/ren/.m2/repository/org/python/jython/2.7.0/jython-2.7.0.jar:$CLASSPATH
TARGET_JAR_PATH=$1
CONFIG_PATH=/home/ren/Software/jacoco-0.8.0/lib/

CLASSPATH=$LIBS:$TARGET_JAR_PATH:$CONFIG_PATH:$CLASSPATH
INST_CLASS=$2

java -cp $CLASSPATH $INST_CLASS


# /home/ren/.m2/repository/com/fasterxml/jackson/core/jackson-annotations/2.3.0/jackson-annotations-2.3.0.jar
# /home/ren/.m2/repository/com/fasterxml/jackson/core/jackson-core/2.3.1/jackson-core-2.3.1.jar
# /home/ren/.m2/repository/com/fasterxml/jackson/core/jackson-databind/2.3.3/jackson-databind-2.3.3.jar
# /home/ren/.m2/repository/com/ibm/icu/icu4j/58.2/icu4j-58.2.jar
# /home/ren/.m2/repository/junit/junit/4.12/junit-4.12.jar
# /home/ren/.m2/repository/org/abego/treelayout/org.abego.treelayout.core/1.0.3/org.abego.treelayout.core-1.0.3.jar
# /home/ren/.m2/repository/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar
# /home/ren/.m2/repository/org/antlr/antlr4-runtime/4.7.1/antlr4-runtime-4.7.1.jar
# /home/ren/.m2/repository/org/antlr/antlr4/4.7.1/antlr4-4.7.1.jar
# /home/ren/.m2/repository/org/antlr/ST4/4.0.8/ST4-4.0.8.jar
# /home/ren/.m2/repository/org/glassfish/javax.json/1.0.4/javax.json-1.0.4.jar
# /home/ren/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
# /home/ren/.m2/repository/org/python/jython/2.7.0/jython-2.7.0.jar
# /home/ren/Software/jacoco-0.8.0/lib/jacoco-agent.properties

# /home/ren/Research/TCP/Recognized/Subjects/printtokens2/scripts/Run/ExtractFeatures.jar

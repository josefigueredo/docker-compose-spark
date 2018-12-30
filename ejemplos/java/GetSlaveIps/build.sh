#!/bin/bash
javac -cp ../libs/spark-core_2.12-2.4.0.jar:../libs/scala-library-2.12.8.jar GetSlaveIpsApp.java
jar cmf GetSlaveIpsApp.mf GetSlaveIpsApp.jar GetSlaveIpsApp.class GetSlaveIpsApp.java

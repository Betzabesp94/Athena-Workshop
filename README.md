# Athena Workshop 

This repository is an exploration of the public resources found in the [AWS Athena Workshop -Self Paced Labs](https://catalog.us-east-1.prod.workshops.aws/workshops/9981f1a1-abdc-49b5-8387-cb01d238bb78/en-US/20-howtostart/201-self-paced/2013-cloudformation)

Depending on the expertice level you can follow 3 diferent stacks: 

1. Athena Basics (CloudFormationTemplates/Athena-Workshop.yaml)
2. Athena Federation (CloudFormationTemplates/Athena-Federation-Workshop.yaml)
3. Visual Code Server Development Environment (CloudFormationTemplates/vscode-server.yaml)



## Comments 

### Errors 
Some saved queries on the Athena Federation Workshop using "lambda:hbase".default.lineitem failed, an example of the error might look like this:


````
GENERIC_USER_ERROR: Encountered an exception[java.lang.RuntimeException] from your LambdaFunction[hbase] executed in context[retrieving meta-data] with message[org.apache.hadoop.hbase.client.RetriesExhaustedException: Can't get the location for replica 0]
This query ran against the "default" database, unless qualified by the query. Please post the error message on our forum  or contact customer support  with Query Id: 321...examplequeryid
```

 it works by replacing `"lambda:hbase".default.lineitem` with `hbase.default.lineitem`


The query ShippedLineitemsPricingReport instead works with `"lambda:hbase".default.lineitem`
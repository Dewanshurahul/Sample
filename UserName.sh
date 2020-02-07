#! /bin/bash
echo "Enter your name"
read name
givenString="Hello <<UserName>>, How are You?"
requiredString=${givenString/<<UserName>>/$name}
echo $requiredString

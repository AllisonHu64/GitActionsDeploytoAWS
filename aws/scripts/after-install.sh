#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploytest-webappdeploymentbucket-qaipk442eqgt/hello-world.zip /usr/share/nginx
rm -r /usr/share/nginx/html
unzip /usr/share/nginx/hello-world.zip -d /usr/share/nginx/html
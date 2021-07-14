FROM 345280441424.dkr.ecr.ap-south-1.amazonaws.com/ark_base:latest

LABEL ORG="Armedia LLC" \
      VERSION="1.0" \
      IMAGE_SOURCE="https://github.com/ArkCase/ark_solr" \
      MAINTAINER="Armedia LLC"

# install SASL for mail server authentication that uses TLS
RUN yum update -y && \
    yum install postfix cyrus-sasl-lib cyrus-sasl-plain -y && \
    sed -i 's@^inet_interfaces = localhost@inet_interfaces = all@g' /etc/postfix/main.cf

EXPOSE  587
CMD ["/usr/libexec/postfix/master","-c", "/etc/postfix", "-d"]



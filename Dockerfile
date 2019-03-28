FROM centos:latest
RUN yum -y update && yum clean all -y 
RUN yum -y install epel-release; yum clean all -y

CMD [ "echo", "CENTOS Latest Image" ]

RUN [ "yum", "history"]

#######################################################

# once saved in path or required directory , run the below 

# docker build -t centos_yum_update .



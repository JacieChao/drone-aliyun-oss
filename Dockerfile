FROM ubuntu:18.04
RUN apt-get update && apt-get install -y wget
RUN wget -O /usr/bin/ossutil http://gosspublic.alicdn.com/ossutil/1.6.3/ossutil64 && chmod 755 /usr/bin/ossutil
COPY aliyun-oss /usr/local/bin/
RUN chmod +x /usr/local/bin/aliyun-oss

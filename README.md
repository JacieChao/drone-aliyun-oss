# drone-aliyun-oss
drone plugin for aliyun oss

## How to build
docker build -t jacie/drone-aliyun-oss .

## How to use

- with drone

```
steps:
- name: upload
  image: jacie/drone-aliyun-oss
  pull: always
  environment:
    ALIYUN_ACCESS_KEY_ID:
      from_secret: <your-access-id>
    ALIYUN_SECRET_ACCESS_KEY:
      from_secret: <your-secret-id>
    PLUGIN_SOURCE: <source-file-dir>
    ALIYUN_BUCKET: <oss-bucket>
    ALIYUN_ENDPOINT: <oss-endpoint>
    PLUGIN_TARGET: <target-dir>
    PLUGIN_RECURSIVE: <parameter>
    PLUGIN_ACCESS: <oss-access>
  commands:
    - "aliyun-oss"
```

with docker
```
docker run --rm -e PLUGIN_SOURCE=<source-dir> \
    -e ALIYUN_BUCKET=<bucket-name> \
    -e PLUGIN_TARGET=<target-dir> \
    -e ALIYUN_ACCESS_KEY_ID=<your-access-key> \
    -e ALIYUN_SECRET_ACCESS_KEY=<your-secret-key> \
    -e ALIYUN_ENDPOINT=<your-oss-endpoint> \
    -e PLUGIN_RECURSIVE=<upload-parameter> \
    -e PLUGIN_ACCESS=<oss-access> \
    -v <your-local-dir>:<source-dir> \
    jacie/drone-aliyun-oss aliyun-oss
```
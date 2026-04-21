FROM node:lts-alpine
RUN npm install -g webdav-server
RUN mkdir -p /data
EXPOSE 1900
# --root / 옵션을 추가하여 접속하자마자 /data 폴더가 보이게 설정합니다.
CMD ["/usr/local/bin/webdav-server", "/data", "--port", "1900", "--user", "admin", "--password", "yourpassword", "--root", "/"]

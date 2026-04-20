FROM node:lts-alpine
RUN npm install -g webdav-server
# 1900 대신 원하는 포트 번호 입력
EXPOSE 8080
# 포트 옵션(--port)도 동일하게 변경
CMD ["webdav-server", "/data", "--port", "8080", "--user", "admin", "--password", "yourpassword"]

FROM node:lts-alpine

# 1. webdav-server 패키지 설치
RUN npm install -g webdav-server

# 2. 데이터를 저장할 폴더 생성
RUN mkdir -p /data

# 3. 포트 설정
EXPOSE 1900

# 4. 실행 경로를 직접 지정 (가장 확실한 방법)
# --user와 --password 뒤의 값은 본인이 원하는 것으로 수정하세요.
CMD ["/usr/local/bin/webdav-server", "/data", "--port", "1900", "--user", "admin", "--password", "yourpassword"]

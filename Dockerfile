FROM node:lts-alpine

# webdav-server 설치
RUN npm install -g webdav-server

# 데이터를 저장할 폴더 생성
RUN mkdir -p /data

# 포트 설정
EXPOSE 1900

# 실행 명령 수정 (npx를 사용하거나 직접 실행)
# 'yourpassword' 부분은 본인의 비밀번호로 꼭 변경하세요.
CMD ["npx", "webdav-server", "/data", "--port", "1900", "--user", "admin", "--password", "yourpassword"]

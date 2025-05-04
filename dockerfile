# 베이스 이미지를 선택합니다. Node.js 앱을 빌드하고 실행하는 예시입니다.
FROM node:18-alpine

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 필요한 파일들을 복사합니다.
COPY package*.json ./
COPY server.js .
COPY index.html .

# 의존성을 설치합니다.
RUN npm install

# 포트를 노출합니다.
EXPOSE 3000

# 애플리케이션을 실행합니다.
CMD ["node", "server.js"]
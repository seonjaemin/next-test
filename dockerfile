FROM nginx:latest
RUN echo "<h1>Dummy Page</h1>" > /usr/share/nginx/html/index.html  # 임시 파일 생성
COPY . /usr/share/nginx/html/
EXPOSE 80
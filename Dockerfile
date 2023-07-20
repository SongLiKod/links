# 使用Nginx官方镜像作为基础镜像
FROM nginx:latest

# 将HTML项目文件复制到容器中的默认Nginx网站目录
COPY . /usr/share/nginx/html

# 在Docker容器中暴露Nginx的默认HTTP端口（通常为80）
EXPOSE 80

# 在容器启动时启动Nginx服务器
CMD ["nginx", "-g", "daemon off;"]

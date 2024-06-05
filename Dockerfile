#django项目下的Dockerfile
# 使用 Python 官方镜像作为基础镜像
FROM python:3.10

# 创建目录
RUN mkdir -p  /app

# 设置工作目录
WORKDIR /app

# 复制当前目录文件文件到容器中
COPY . /app/

# 安装项目所需的依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露 Django 项目运行的端口
EXPOSE 8000

# 启动 Django 项目
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
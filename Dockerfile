# Sử dụng image chứa Python 3.11.9
FROM python:3.14.0a3

# Thiết lập biến môi trường
ENV PYTHONUNBUFFERED=1

# Sao chép các file cần thiết vào container
COPY . /app
WORKDIR /app

# Cài đặt các dependencies
RUN pip install -r requirements.txt

# Chạy ứng dụng FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

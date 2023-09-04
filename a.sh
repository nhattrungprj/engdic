#!/bin/bash

# Tạo thư mục 'data' nếu nó không tồn tại
mkdir -p data

# Đọc các URL từ tệp văn bản
while read -r url; do
  # Xóa khoảng trắng và ký tự xuống dòng
  url=$(echo "$url" | tr -d '\n\r')

  # Tạo tên tệp đầu ra bằng cách loại bỏ dấu '_' và số
  file_name=$(basename "$url" | tr -d '_' | sed 's/[0-9]*$//')

  # Sử dụng lệnh curl để tải URL và lưu vào thư mục 'data'
  # Sử dụng -L để xử lý chuyển hướng
  curl -L -o "data/$file_name.html" "$url"
done < "urls.txt"

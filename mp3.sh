# Sử dụng grep để tìm tất cả các đường dẫn có đuôi .mp3 trong tệp HTML và lưu vào tệp mp3.txt
grep -o '"[^"]*\.mp3"' file.html > mp3.txt

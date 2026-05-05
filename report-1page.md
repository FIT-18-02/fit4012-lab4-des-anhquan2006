# Report 1 page - Lab 4 DES / TripleDES

## Mục tiêu
Tìm hiểu và cài đặt thuật toán mã hóa khối DES (Data Encryption Standard) để nắm vững cấu trúc mạng Feistel, các phép hoán vị bit (IP, PC-1, PC-2) và cơ chế tạo khóa con từ khóa chính 64-bit.
## Cách làm / Method

Hoàn thiện cấu trúc: Thực hiện các bảng hoán vị Initial Permutation (IP) và Final Permutation (IP-1) để xử lý khối dữ liệu 64-bit.

Sinh khóa con: Cài đặt hàm Key Schedule để tạo ra 16 khóa con (subkeys) từ khóa gốc thông qua các bảng PC-1, PC-2 và phép dịch bit trái.

Hàm Feistel: Triển khai hàm F bao gồm mở rộng bit (Expansion), thay thế qua các hộp S-box và hoán vị P.

Tích hợp: Kết hợp các thành phần vào vòng lặp 16 vòng của DES và xử lý đọc/ghi dữ liệu thông qua file.
## Kết quả / Result
Nội dung kiểm thử,Dữ liệu đầu vào (Hex),Kết quả đầu ra (Hex),Trạng thái
Mã hóa DES mẫu,0123456789ABCDEF,3D1F2E8C9A0B5C4D,PASS
Giải mã (Round-trip),3D1F2E8C9A0B5C4D,0123456789ABCDEF,PASS
Kiểm tra sai khóa,Wrong Key,Error/Incorrect Data,PASS
## Kết luận / Conclusion
Điều học được: Em đã hiểu rõ cách thức hoạt động của mã hóa khối và tầm quan trọng của tính xáo trộn (confusion) và khuếch tán (diffusion) trong bảo mật.

Hạn chế: Hiện tại chương trình mới chỉ xử lý tốt trên các khối đơn lẻ 64-bit.

Hướng mở rộng: Cài đặt thêm các chế độ vận hành như CBC hoặc nâng cấp lên TripleDES để tăng cường độ bảo mật cho hệ thống.

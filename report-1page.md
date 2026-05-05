# Report 1 page - Lab 4 DES / TripleDES

## Mục tiêu

Mục tiêu của bài lab này là tìm hiểu và trực tiếp thực thi thuật toán mã hóa khối chuẩn **DES (Data Encryption Standard)** và biến thể **TripleDES**. Qua đó, nắm vững cấu trúc mạng Feistel, các bước hoán vị, thay thế (S-box), cơ chế quản lý khóa vòng, cũng như xử lý dữ liệu thực tế thông qua kỹ thuật **Padding** và mã hóa đa khối **(Multi-block)**.

## Cách làm / Method

Em đã thực hiện các thay đổi và bổ sung quan trọng sau trên nền tảng code gốc:

* **Cấu trúc lại mã nguồn:** Chia chương trình thành các Class chuyên biệt như **KeyGenerator** (quản lý tạo 16 khóa vòng) và **DES** (xử lý thuật toán).
* **Bổ sung chức năng Padding:** Triển khai cơ chế **Zero Padding** để đảm bảo mọi đầu vào đều được đưa về bội số của 64 bit trước khi mã hóa.
* **Xử lý Multi-block:** Sử dụng vòng lặp để cắt dữ liệu dài thành từng khối 64 bit và xử lý tuần tự, cho phép mã hóa các chuỗi văn bản dài.
* **Triển khai TripleDES:** Thiết lập quy trình mã hóa theo mô hình chuẩn **EDE** (Encrypt K1 -> Decrypt K2 -> Encrypt K3) và quy trình giải mã ngược lại.
* **Giao diện dòng lệnh:** Hoàn thiện hàm main tuân thủ đúng "Submission Contract" để nhận Mode và dữ liệu từ stdin.

## Kết quả / Result

Chương trình đã vượt qua các bài kiểm tra tự động với kết quả chính xác. Ví dụ với input `0123456789ABCDEF` và key `133457799BBCDFF1`, kết quả ciphertext thu được là `85E813540F0AB405`, đảm bảo tính đúng đắn của thuật toán mã hóa và giải mã (round-trip).

## Kết luận / Conclusion

Thông qua bài lab, em đã hiểu rõ cách thức vận hành của mã hóa khối và tầm quan trọng của việc quản lý khóa. Việc triển khai TripleDES giúp em thấy được cách nâng cao độ bảo mật trên nền tảng các thuật toán cũ. Hạn chế hiện tại là tốc độ xử lý sẽ giảm khi dữ liệu quá lớn, hướng mở rộng là tìm hiểu thêm về các chế độ vận hành như **CBC** hoặc **GCM** để tối ưu hóa hiệu năng và bảo mật.

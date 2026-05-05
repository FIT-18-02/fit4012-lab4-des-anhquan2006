cmake_minimum_required(VERSION 3.10)
project(fit4012_lab4_des LANGUAGES CXX)

# Thiết lập tiêu chuẩn C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Tạo file thực thi 'des' từ file nguồn 'des.cpp'
add_executable(des des.cpp)

# Thiết lập các tùy chọn biên dịch để bắt lỗi chặt chẽ hơn
target_compile_options(des PRIVATE -Wall -Wextra -pedantic)

# Đảm bảo file thực thi được tạo ra ở thư mục gốc của build để các script test dễ tìm
set_target_properties(des PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")

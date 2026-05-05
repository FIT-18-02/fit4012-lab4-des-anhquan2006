#!/usr/bin/env bash
set -euo pipefail

# Di chuyển lên một cấp để tìm thấy des.cpp hoặc chỉ định đường dẫn cụ thể
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o des
./des

#!/usr/bin/env bash
set -euo pipefail

# Biên dịch des.cpp nằm ở thư mục cha
g++ -std=c++17 -Wall -Wextra -pedantic ../des.cpp -o des

# Chạy file thực thi vừa biên dịch
./des

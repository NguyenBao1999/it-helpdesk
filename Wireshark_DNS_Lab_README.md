# 🧪 Wireshark Lab: DNS Query A - facebook.com

## 🧭 Mục tiêu
Sử dụng Wireshark để bắt và phân tích gói tin DNS dạng **query A** gửi tới `facebook.com`.

---

## 🛠 Công cụ sử dụng
- 🖥 Hệ điều hành: Windows 10
- 🌐 Kết nối mạng: Ethernet / Wi-Fi
- 🦈 Phần mềm: Wireshark

---

## 📥 Bắt gói DNS

### Bước 1: Mở Wireshark và chọn đúng giao diện mạng
- Nếu đang dùng **LAN**, chọn `Ethernet`
- Nếu dùng **Wi-Fi**, chọn `Wi-Fi`
- Nhấn nút **cá mập xanh** để bắt đầu

### Bước 2: Tạo truy vấn DNS
Mở cửa sổ CMD và gõ lệnh sau để tạo truy vấn:
```bash
nslookup facebook.com
```

### Bước 3: Lọc gói DNS trong Wireshark
Gõ bộ lọc sau vào khung filter của Wireshark:
```wireshark
dns.qry.name == "facebook.com"
```
👉 Nhấn **Enter** để lọc đúng gói cần.

---

## 🔍 Phân tích gói DNS

- Click vào dòng có:
  ```
  Protocol: DNS | Info: Standard query A facebook.com
  ```
- Mở rộng phần:
  ```
  Domain Name System (query)
  ```
- Kiểm tra dòng:
  ```
  Queries
      facebook.com: type A, class IN
  ```

✅ Đây là **DNS query yêu cầu địa chỉ IPv4 (type A)** của `facebook.com`.

---

## 📘 Kiến thức học được

- Phân biệt **query** và **response** trong DNS
- Sử dụng **Wireshark filter** để phân tích đúng mục tiêu
- Hiểu cách **DNS phân giải tên miền** thông qua UDP port 53

---

## 👤 Tác giả

Nguyễn Lê Hoàng Bảo  
📧 nguyenbao211299@gmail.com  
🌐 [Portfolio](https://nguyenbao1999.github.io)
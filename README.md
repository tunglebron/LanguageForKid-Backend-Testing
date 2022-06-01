# Language For Kid - Backend

NodeJS, <br>
Express, <br>
Microsoft SQL Server

Database <br>
-----
Kết nối với database sử dụng SQL Authentication, config lại kết nối tại <b>server/models/database.js</b> <br>
Câu lệnh khỏi tạo database và dữ liệu lưu trong file .sql tại thư mục database. <br>

API có thể sử dụng <br>
-----
1. Lấy danh sách chủ đề của bài học <br>
GET: http://localhost:3001/api/v1/big-list
- Yêu cầu có param <b>'x_authorization'</b> là accessToken được trả về sau khi đăng nhập thành công trong Header
2. Lấy tất cả bài học <br>
GET: http://localhost:3001/api/v1/detail
- Yêu cầu có param <b>'x_authorization'</b> là accessToken được trả về sau khi đăng nhập thành công trong Header
3. Lấy tất cả bài học theo chủ đề <br>
GET: http://localhost:3001/api/v1/detail/filter?id={id}
- Yêu cầu có param <b>'x_authorization'</b> là accessToken được trả về sau khi đăng nhập thành công trong Header
- Sử dụng query string
4. Lấy danh sách bài học ngẫu nhiên <br>
GET: http://localhost:3001/api/v1/detail/random
5. Đăng ký người dùng <br>
POST: http://localhost:3001/api/v1/user/register
- Truyền JSON vào <b>Body</b> với 3 tham số: <b>username</b>, <b>password</b>, <b>email</b>
<pre>
{ 
    "username": "user1",
    "password": "12345678",
    "email": "user1@gmail.com"
}
</pre>
6. Đăng nhập người dùng <br>
POST: http://localhost:3001/api/v1/user/login
- Truyền JSON vào <b>BODY</b> với 2 tham số: <b>username</b>, <b>password</b>
<pre>
{ 
    "username": "user1",
    "password": "12345678"
}
</pre>
Gửi access token sau khi đăng nhập thành công <br>
-----
<b>Headers</b>
<pre>
{ 
    x_authorization: ... accessToken ... 
} 
</pre>
7. Cấp lại access token cho người dùng sau khi hết hạn đăng nhập <br>
POST: http://localhost:3001/api/v1/user/refresh
- Yêu cầu có param <b>'x_authorization'</b> chứa access token (đã hết hạn) trong <b>Headers</b>
- Truyền JSON vào <b>Body</b> với tham số <b>'refreshToken'</b> chứa refreshToken của user
8. Lấy thông tin user: <br>
GET: http://localhost:3001/api/v1/user/info
- Yêu cầu có param <b>'x_authorization'</b> là accessToken được trả về sau khi đăng nhập thành công trong Header
9. Kiểm tra accessToken có sử dụng được hay không <br>
POST: http://localhost:3001/api/v1/user/checkExpiredToken
- Yêu cầu có param <b>'x_authorization'</b> là accessToken
10. Thay đổi tên người dùng.
PUT: http://localhost:3001/api/v1/user/info/change/name?username={username}&newName={newName}
- Yêu cầu có param <b>'x_authorization'</b> là accessToken
- Có param username và newName
11. Thay đổi mật khẩu.
PUT: http://localhost:3001/api/v1/user/info/change/password
- Yêu cầu có param <b>'x_authorization'</b> là accessToken
- Truyền JSON vào <b>Body</b> với 3 tham số: <b>username</b>, <b>curPassword</b>, <b>newPassword</b>
<pre>
{ 
    "username": "user1",
    "curPassword": "12345678",
    "newPassword": "12341234"
}
</pre>


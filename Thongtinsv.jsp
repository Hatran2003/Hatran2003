<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <title>Thông tin sinh viên</title>
</head>
<body>
    <%
        String[] provinces = {
            "An Giang", "Bà Rịa-Vũng Tàu", "Bạc Liêu", "Bắc Giang", "Bắc Kạn", "Bắc Ninh", "Bến Tre", 
            "Bình Dương", "Bình Định", "Bình Phước", "Bình Thuận", "Cà Mau", "Cao Bằng", "Đà Nẵng", 
            "Đắk Lắk", "Đắk Nông", "Điện Biên", "Đồng Nai", "Đồng Tháp", "Gia Lai", "Hà Giang", "Hà Nam", 
            "Hà Nội", "Hà Tĩnh", "Hải Dương", "Hải Phòng", "Hậu Giang", "Hòa Bình", "Hồ Chí Minh", 
            "Hưng Yên", "Khánh Hòa", "Kiên Giang", "Kon Tum", "Lai Châu", "Lâm Đồng", "Lạng Sơn", 
            "Lào Cai", "Long An", "Nam Định", "Nghệ An", "Ninh Bình", "Ninh Thuận", "Phú Thọ", 
            "Phú Yên", "Quảng Bình", "Quảng Nam", "Quảng Ngãi", "Quảng Ninh", "Quảng Trị", 
            "Sóc Trăng", "Sơn La", "Tây Ninh", "Thái Bình", "Thái Nguyên", "Thanh Hóa", "Thừa Thiên Huế", 
            "Tiền Giang", "Trà Vinh", "Tuyên Quang", "Vĩnh Long", "Vĩnh Phúc", "Yên Bái"
        };
        String[] genders = {"Nam", "Nữ", "Khác"};
        String[] submissionStatus = {"Chưa Nộp", "Đã Nộp"};
    %>
    <div class="container pt-5">
        <div class="p-3 text-primary-emphasis bg-danger-subtle border border-white rounded-3">
            <h1>Thông tin sinh viên</h1>
            <form action="studentConfirm" method="post">
                <div>
                    <label>Họ và tên</label>
                    <input type="text" class="form-control" name="fullName" required> <br>
                </div>

                <div>
                    <label>Mã sinh viên</label> 
                    <input type="text" class="form-control" name="studentId" required>
                    <br>
                </div>

                <div>
                    <label>Ngày sinh </label> 
                    <input type="date" class="form-control" name="dob" required>
                    <br>
                </div>

                <div>
                    <label>Nơi sinh </label> 
                    <select name="placeOfResidence" id="placeOfResidence" required>
                        <%
                            for (String province : provinces) {
                        %>
                            <option value="<%= province %>"><%= province %></option>
                        <%
                            }
                        %>
                    </select> <br>
                </div>

                <div>
                    <label>Giới tính</label> 
                    <%
                        for (String sex : genders) {
                    %>
                        <input type="radio" id="<%= sex %>" name="gender" value="<%= sex %>" <%= (sex.equals("Nam")) ? "checked" : "" %>>
                        <label for="<%= sex %>"><%= sex %></label> 
                    <%
                        }
                    %>
                    <br>
                </div>

                <div>
                    <label>Trạng thái nộp:</label>
                    <select name="submissionStatus" id="submissionStatus" required>
                        <%
                            for (String status : submissionStatus) {
                        %>
                            <option value="<%= status %>"><%= status %></option>
                        <%
                            }
                        %>
                    </select> <br>
                </div>

                <div class="pt-3">
                    <input type="button" value="Thêm" class="mt-1" onclick="location.href='AddStudent.jsp'">
                </div>
            </form>
        </div>
    </div>
</body>
</html>

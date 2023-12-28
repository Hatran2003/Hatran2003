<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .custom-table {
            margin: 0 auto;
            margin-top: 50px;
            width: 80%;
            text-align: center;
            background-color: rgb(255, 230, 242);
        }

        .add-btn-container,
        .total-btn-container {
            position: fixed;
            bottom: 20px;
        }

        .add-btn-container {
            right: 20px;
        }

        .total-btn-container {
            left: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="mt-4">Danh Sách Sinh Viên và Tiền Đoàn</h2>
        <table class="table custom-table">
            <thead class="thead-light">
                <tr>
                	 <th>Stt</th>
                    <th>Mã Sinh Viên</th>
                    <th>Họ và Tên</th>
                    <th>Tiền Đoàn Đã Nộp</th>
                    <th>Ngày sinh</th>
                </tr>
            </thead>
            <tbody>
                <!-- Hiển thị dữ liệu từ Database hoặc nguồn dữ liệu khác -->
                <tr>
                	<td>1</td>
                    <td>SV001</td>
                    <td>Nguyễn Văn A</td>
                    <td>100,000 VND</td>
                    <td>1/05/2003</td>
                </tr>
                <tr>
                	<td>2</td>
                    <td>SV002</td>
                    <td>Trần Thị B</td>
                    <td>Chưa Nộp</td>
                    <td>7/03/2003</td>
                </tr>
                <tr>
                	<td>3</td>
                    <td>SV003</td>
                    <td>Lê Văn C</td>
                    <td>200,000 VND</td>
                    <td>5/12/2003</td>
                </tr>
            </tbody>
        </table>
        <div class="add-btn-container">
            <button type="button" class="btn btn-success" onclick="location.href='add_student.jsp'">Thêm Sinh Viên</button>
        </div>
        <div class="total-btn-container">
            <button type="button" class="btn btn-primary" onclick="calculateTotal()">Tổng Số Tiền</button>
        </div>
    </div>

    <script>
        function calculateTotal() {
            // Thực hiện logic tính tổng số tiền ở đây
            alert("Tính tổng số tiền!");
        }
    </script>
</body>
</html>

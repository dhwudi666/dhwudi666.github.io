<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

    <script type="text/javascript">
        function go() {
            var tuId = document.getElementById("stuId").value;
            var tuPwd = document.getElementById("stuPwd").value;
            axios.post("/go",{
                admId:tuId,
                admPwd:tuPwd,
            }).then((res)=>{
                console.log(res.data)
                if (res.data==""){
                    alert("账号或密码错误");
                    return;
                }
                alert("登录成功");
                $(location).attr("href","show.jsp");
                return;
            })
        }
    </script>
</head>
<body>
学号:<input type="number" id="stuId" name="stuId"><br>
密码:<input type="password" id="stuPwd" name="stuPwd"><br>
<input type="button" value="登录" onclick="go()">
</body>
</html>

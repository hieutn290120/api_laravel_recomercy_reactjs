<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reset-Password</title>
    <style>
        .container{
                width: 800px;
                margin: 0px auto
                
            }
        .container h2{
                font-family: Arial, Helvetica, sans-serif;
                font-size: 18px;
                font-weight: bold
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Dear {{$data['name']}}</h2>
        <p>Tôi nhận được yêu cầu đặt lại mật khẩu của bạn.</p>         
        <hr />
        <p>Bạn vui lòng nhấp vào đường link bên dưới để tiến hành đặt lại mật khẩu</p>
        <hr />
        <a href={{'http://localhost:3000/forgot-password/reset/key='.$data['token']}}>{{'http://localhost:3000/forgot-password/reset/key='.$data['token']}}</a>  
        <p>Link này có hiệu lực trong vòng <h3>10 phút</h3></p>
      </div>
</body>
</html>
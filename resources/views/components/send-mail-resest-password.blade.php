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
        .heading {
            font-family: 'Titillium Web', sans-serif;
            font-size: 24px;
            color: black;
        }
        .fotter-div{
            margin-top: 30px;
            background: wheat
        }

        .footer-ul{
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        .footer-ul li{
            padding: 4px;
            transition: border-width 0.6s linear
            
        }
        .footer-ul li:hover{
            color: #957bda;
                cursor: pointer;
                outline-width: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="col-sm-12 col-md-12 col- xs-12">
            <div class="header">
                <a href={{'https://trannhanhieu.com'}}><img src='http://res.cloudinary.com/hieu-kun/image/upload/v1620552809/t1paj465homhq7vtiull.pdf' width="150px"/></a>
            </div>
        </div>

        <div class="col-sm-12 col-md-12 col- xs-12">
            <div class="main">
                <h2>Chào quý khách hàng: {{$data['name']}}</h2>
                <p><b>Điện tử Đức Tuấn</b> đã nhận được yêu cầu thay đổi mật khẩu của quý khách.</p>         
                <br />
                <p>Xin hãy click vào đường dẫn bên dưới để đổi mật khẩu</p>
                <br/>
                <a href={{'http://localhost:3000/forgot-password/reset/key='.$data['token']}}>{{'http://localhost:3000/forgot-password/reset/key='.$data['token']}}</a>
                <br />  
                <p><b>Lưu ý: </b>Link này có hiệu lực trong vòng 10 phút.</p>
                <br />
                <p>Mọi thắc mắc và đóng góp ý kiến vui lòng liên hệ qua email: <b>customer.service.hieu@gmail.com</b> hoặc qua số điện thoại <b>0973564984</b></p>
                <br />
                <p>Trân Trọng,</p>
                <b>trannhanhieu.com</b>
            </div>
        </div>

        <div class="col-sm-12 col-md-12 col- xs-12"> 
            <div class="footer">
                <div className="col-md-12 col-sm-12 col-xs-12">
                    <h5 className="heading">Thông Tin Liên Hệ</h5>
                    <ul>
                        <li><a href="tel:0973 564 984">Phone: (+84) 973564984</a></li>
                        <li><a href="mailto:hieutn290120@gmail.com">Email: hieutn290120@gmail.com</a></li>
                        <li><a>Địa chỉ 1: Vinh Hiền, Phú Lộc, Thừa Thiên Huế</a></li> 
                        <li><a>Địa chỉ 2: 87 Lê Cảnh Tuân, phường Nại Hiên Đông, quận Sơn Trà, thành phố Đà nẵng</a></li> 
                    </ul>
                </div>
                <p><i className="fa fa-copyright">2021 Desgin by Tran Nhan Hieu</i></p>
            </div>
        </div>
       
      </div>
</body>
</html>
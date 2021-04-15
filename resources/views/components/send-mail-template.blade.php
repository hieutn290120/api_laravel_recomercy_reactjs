
<!DocType html>
<html>
    <head>
        <title>SendMail Demo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
     
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
            /* .container table{
                border: solid 2px coral
                border: 15px
            } */
            table, td, th {
                border: 1px solid black;
                text-align: center
            }
            
            table {
                width: 100%;
                border-collapse: collapse;
            }


        </style>
    </head>
<body>
    <div class="container">
        <h2>Dear {{$data['name']}}</h2>
        <p>Rất cảm ơn bạn đã tin tưởng dùng sản phẩm bên chúng tôi</p>            
        <p>Đây là tóm tắt đơn hàng của Quý Khách</p>            
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Name</th>
              <th>Description</th>
              <th>Avatar</th>
              <th>Price</th>
              <th>Discount</th>
              <th>Quantity</th>
              <th>Total</th>
            </tr>
          </thead>
          <tbody>
            @foreach ( $data['listcart'] as $listcart )
            <tr>
                <td style="font-size: 12px; font-weight: bold;">{{$listcart['name']}}</td>
                <td style="font-size: 12px; font-weight: bold;">{{$listcart['description']}}</td>
                <td> <img src={{$listcart['avatar']}} width="100px" alt=""></td>
                <td style="font-size: 12px; font-weight: bold;">{{$listcart['price']}} VND</td>
                <td style="font-size: 12px; font-weight: bold;">{{$listcart['discount']}} %</td>
                <td style="font-size: 12px; font-weight: bold;">{{$listcart['quantity']}}</td>
                <td style="font-size: 12px; font-weight: bold;">{{$listcart['quantity'] * ($listcart['price'] - ($listcart['price'] * $listcart['discount'] / 100))}} VND</td>
              </tr>
            @endforeach
          </tbody>
          <tfoot>
              <tr>
                  <td style="font-size: 15px; font-weight: bold;">SumTotal:</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>{{$data['total']}}</td>
              </tr>
          </tfoot>
        </table>
      </div>
</body>
</html>
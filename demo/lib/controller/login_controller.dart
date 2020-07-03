import 'package:aqueduct/aqueduct.dart';
import 'package:demo/demo.dart';
import 'package:demo/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:demo/model/result.dart';
import 'package:http/src/response.dart' as res;
import 'dart:convert';

class LoginController extends ResourceController {

  LoginController(this.context);
  final ManagedContext context;

  @Operation.post()
 Future<Response> login(@Bind.body() User user) async {
    String msg = "登录异常";
    //查询数据库是否存在这个用户
    var query = Query<User>(context)

      ..where((u) => u.id).equalTo(user.id);
    User result = await query.fetchOne();

    if (result == null) {
      msg = "用户不存在";
    } else {
      //通过auth/token获取token。登录成功的话，返回token
      var clientId = "com.donggua.chat";
      var clientSecret = "dongguasecret";
      var body =
          "name=${user.id}&password=${user.password}&grant_type=password";
      var clientCredentials =
          Base64Encoder().convert("$clientId:$clientSecret".codeUnits);

      res.Response response =
          await http.post('http://localhost:8888/auth/token',
              headers: {
                "Content-Type": "application/x-www-form-urlencoded",
                "Authorization": "Basic $clientCredentials"
              },
              body: body);

      if (response.statusCode == 200) {
        var map = json.decode(response.body);

        return Response.ok(
          Result(
            code: 1,
            msg: "登录成功",
            data: {
              'id': result.id,
              'access_token': map['access_token'],
              'password': result.password
            },
          ),
        );
      }
    }
    return Response.ok(
      Result(
        code: 1,
        msg: msg,
      ),
    );
  }
}
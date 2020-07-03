import 'demo.dart';
import 'package:demo/model/user.dart';
import 'package:demo/model/q_a.dart';
import 'package:demo/model/qq.dart';
import 'package:demo/model/game.dart';
import 'package:demo/model/practice.dart';
//import 'package:aqueduct/managed_auth.dart';
//import 'controller/center_controller.dart';
import 'controller/questions_controller.dart';
import 'controller/register_controller.dart';
import 'controller/login_controller.dart';
import 'controller/homepage_controller.dart';
import 'controller/practiceAdd_controller.dart';
import 'controller/practice_controller.dart';

/*import 'package:heroes/model/question.dart';*/
/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class HeroesChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  ManagedContext context;
  AuthServer authServer;
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));

    final config = HeroConfig(options.configurationFilePath);
    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    final persistentStore = PostgreSQLPersistentStore.fromConnectionInfo(
        config.database.username,
        config.database.password,
        config.database.host,
        config.database.port,
        config.database.databaseName);

    context = ManagedContext(dataModel, persistentStore);

   // final delegate = ManagedAuthDelegate<User>(context, tokenLimit: 20);//tokenLimit用于限制token的长度
   // authServer = AuthServer(delegate);//获取到的授权服务类
  }

  @override
  Controller get entryPoint {
    final router = Router();
    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/

    router.route('/auth/token').link(() => AuthController(authServer));//登录

    router//test
      .route('/question/[:tid]')
      .link(() => QuestionsController(context));

    router
        .route('/register/user')
        .link(() => RegisterController(context, authServer));//注册

    router
      .route('/homepage')
      .link(() => HomepageController(context));//首页
    
    router.route("/static/*").link(()=>FileController("static/static"));//闯关练习

    router
      .route('/center/[:pid]')
      .link(() => CenterController(context));//个人中心

    router
      .route('/practice')
      .link(() => PracticeAddController(context));//个人中心
    
    

    return router;
    
  }
}

class HeroConfig extends Configuration {
  HeroConfig(String path): super.fromFile(File(path));

  DatabaseConfiguration database;
}




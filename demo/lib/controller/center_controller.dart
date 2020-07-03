import 'package:aqueduct/aqueduct.dart';
import 'package:demo/demo.dart';
import 'package:demo/model/practice.dart';
import 'package:demo/model/result.dart';

/*class CenterController extends ResourceController {
  CenterController(this.context);

  final ManagedContext context; 

   @Operation.get()//get所有的practice记录
  Future<Response> getAllpractice({@Bind.query('pid') int pid}) async {
    final heroQuery = Query<Practice>(context);

    final heroes = await heroQuery.fetch();

    return Response.ok(heroes);
}

  @Operation.get('id')//某id下的记录
  Future<Response> getHeroByID(@Bind.path('pid') int pid) async {
    final heroQuery = Query<Practice>(context)
      ..where((h) => h.pid).equalTo(pid);    

    final hero = await heroQuery.fetchOne();

    if (hero == null) {
      return Response.notFound();
    }
    return Response.ok(hero); 
  }

  @Operation.post()//提交记录
  Future<Response> createHero() async {
    final hero = Practice()
      ..read(await request.body.decode(), ignore: ["id"]);
    final query = Query<Practice>(context)..values = hero;

    final insertedHero = await query.insert();
    return Response.ok(insertedHero);
  }
   
  @Operation.delete('id')//删除某条记录
  Future<Response> deleteArticleById(@Bind.path('pid') int pid) async {
    final query = Query< Practice>(context)..where((a) => a.pid).equalTo(pid);//删除一条数据
    final result = await query.delete();

    return Response.ok(result);
    } 
    
}

*/
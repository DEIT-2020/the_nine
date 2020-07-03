import 'package:aqueduct/aqueduct.dart';
import 'package:demo/demo.dart';
import 'package:demo/model/practice.dart';



class CenterController extends ResourceController {
  CenterController(this.context);

  final ManagedContext context;

 
  @Operation.get('pid')
  Future<Response> getWordByID(@Bind.path('pid') int pid) async {
    final wordQuery = Query<Practice>(context);

    final word = await wordQuery.fetch();

    if (Practice == null) {
      return Response.notFound();
    }
    return Response.ok(word);//这个是返回整张表格
  }


}


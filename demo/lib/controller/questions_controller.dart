import 'package:aqueduct/aqueduct.dart';
import 'package:demo/demo.dart';
import 'package:demo/model/qq.dart';

class QuestionsController extends ResourceController {
  QuestionsController(this.context);

  final ManagedContext context;

  @Operation.get('tid')
  Future<Response> getWordByID(@Bind.path('tid') int tid) async {
    //select * from table where tid=?
    final wordQuery = Query<QQ>(context)..where((h) => h.tid).equalTo(tid);

    final word = await wordQuery.fetchOne();

    if (QQ == null) {
      return Response.notFound();
    }
    return Response.ok(word);
  }
}

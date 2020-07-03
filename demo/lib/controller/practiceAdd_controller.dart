import 'package:aqueduct/aqueduct.dart';
import 'package:demo/demo.dart';
import 'package:demo/model/practice.dart';


class PracticeAddController extends ResourceController {
  PracticeAddController(this.context);

  final ManagedContext context;

  @Operation.post()
Future<Response> createPractice(@Bind.body() Practice inputHero) async {
  final postquery = Query<Practice>(context)
    ..values = inputHero;

  final insertedHero = await postquery.insert();

  return Response.ok(insertedHero);
}

/*
//check
    @Operation.put('questionId')
    Future<Response> checkQuestions() async {
      return Response.ok("checkQuestions");
    }
*/
  }

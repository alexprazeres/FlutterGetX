import 'package:app/Model/Provider/Api.dart';
import 'package:meta/meta.dart';

class PostRepository {
  final Api api;

  PostRepository({@required this.api}) : assert(api != null);

  // gravarResultado(String pontos, String resultado) {
  //   return api.gravarResultado(pontos, resultado);
  // }
}

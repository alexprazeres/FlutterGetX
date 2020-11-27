import 'package:app/Model/Provider/Api.dart';
import 'package:meta/meta.dart';

class GetRepository {
  final Api api;

  GetRepository({@required this.api}) : assert(api != null);

  buscarImagens() {
    return api.buscarImagens();
  }
}

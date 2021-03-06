import 'package:dio/dio.dart';
import 'package:rectec_app/models/pluviometria/modelo.model.dart';

import '../../settings.dart';

class ModeloRepository {
  Future<List<Modelo>> getAll() async {
    var url = Settings.apiUrl + "modelo/";
    Response response = await Dio().get(
      url,
      options: Options(
        headers: Settings.basicAuth
      )
    );
    return (response.data as List).map((item) => Modelo.fromJson(item)).toList();
  }
}
import 'dart:convert';
import 'dart:io';

import 'package:quiz_project/data_room/question_model.dart';

import 'http_service.dart';

class QuestionRequest {
  Future<QuestionModel?> getWord() async {
    var result;
    try {
      final response = await HttpService().getWeatherData();
      if (response.statusCode == 200) {
        final decodedResult = json.decode(response.body);

        // result = QuestionModel.fromJson(decodedResult['results']);

        return result;
      } else {
        return null;
      }
    } on SocketException catch (e) {
      throw e;
    } on HttpService catch (e) {
      throw e;
    } on FormatException catch (e) {
      throw e;
    }
  }
}

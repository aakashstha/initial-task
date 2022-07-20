import 'package:dio/dio.dart';

Future<dynamic> fetchAllUserAds() async {
  String endPoint =
      "https://newsapi.org/v2/everything?q=bitcoin&apiKey=e7559ce21e5a4dfb926def0dcfdf2b52";
  Dio dio = Dio();
  try {
    Response response = await dio.get(endPoint);
    return response.data;
  } catch (error) {
    // ignore: avoid_print
    print("Error from getting user" + error.toString());
    throw Exception('Failed to load post');
  }
}

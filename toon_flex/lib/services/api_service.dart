import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toon_flex/models/webtoon_episode_model.dart';
import 'package:toon_flex/models/webtoon_model.dart';

import '../models/webtoon_detail_model.dart';

class ApiService{
  static const String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";

  static const String today = "today";

  // URL 요청을 하기 위해 http 패키지 필요 https://pub.dev/packages/http
  // pubspec.yaml 파일에 디펜던시 추가
  static Future<List<WebtoonModel>> getTodaysToons()async{
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    // Future 타입의 객체 리턴
    final response =  await http.get(url);
    if(response.statusCode == 200){
      final List<dynamic> webtoons = jsonDecode(response.body);

      for(var webtoon in webtoons){
        final instance =  WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async{
    final url = Uri.parse('$baseUrl/$id');
    final response = await http.get(url);
    if(response.statusCode == 200){
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodesById(String id) async{
    List<WebtoonEpisodeModel> episodesInstances = [];
    final url = Uri.parse('$baseUrl/$id/episodes');
    final response = await http.get(url);
    if(response.statusCode == 200){
      final episodes = jsonDecode(response.body);
      for(var episode in episodes){
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}

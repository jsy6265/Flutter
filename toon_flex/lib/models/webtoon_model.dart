class WebtoonModel {
  final String title, thumb, id;

  //fromJson 생성자는 map을 받아서
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}

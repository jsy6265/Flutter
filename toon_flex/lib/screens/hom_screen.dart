import 'package:flutter/material.dart';
import 'package:toon_flex/services/api_service.dart';
import 'package:toon_flex/widgets/webtoon_widget.dart';

import '../models/webtoon_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        surfaceTintColor: Colors.white,
        //음영 설정
        shadowColor: Colors.black,
        //음영 설정
        elevation: 2,
        // 음영 조절
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: FutureBuilder(
        // 자기가 기다릴 Future랑 builder 함수에 context와 snapshot을 전달받아 비동기 로직을 수행한다
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //ListView 위젯은 여러 항목을 나열하는데 최적화된 위젯이다
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //화면에 남는 공간을 차지하는 위젯, row나 column의 child를 확장해서 그 child가 남는 공간을 채우게한다.
                Expanded(child: makeList(snapshot))
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      // 화면에 들어가는 만큼만 위젯을 렌더링한다?
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id);
      },
      // 아이템과 아이템 사이에만 구분자를 생성
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}

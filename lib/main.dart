import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(LunchApp());

class LunchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LunchPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LunchPage extends StatefulWidget {
  @override
  _LunchPageState createState() => _LunchPageState();
}

class _LunchPageState extends State<LunchPage> {
  // 50개의 점심 메뉴 리스트
  final List<String> lunchMenu = [
    '김치찌개', '된장찌개', '불고기', '된장국', '비빔밥', '떡볶이', '라면', '돈까스', '김밥', '초밥',
    '갈비탕', '순두부찌개', '냉면', '불닭', '삼겹살', '짜장면', '짬뽕', '삼계탕', '오므라이스', '낙지볶음',
    '순대국', '회덮밥', '김치볶음밥', '닭갈비', '우동', '죽', '떡국', '팟타이', '햄버거', '피자',
    '파스타', '볶음밥', '치킨', '제육볶음', '두부조림', '순대', '갈비', '알밥', '소고기무국', '해물파전',
    '전주비빔밥', '나가사키짬뽕', '양념치킨', '불고기비빔밥', '꼬치구이', '소고기장조림', '소면', '가츠동', '빨간국수'
  ];

  // 현재 추천된 메뉴
  String recommendedMenu = "점심 메뉴를 추천해 주세요!";

  // 랜덤 메뉴 뽑기
  void getRandomMenu() {
    final random = Random();
    final randomIndex = random.nextInt(lunchMenu.length);
    setState(() {
      recommendedMenu = lunchMenu[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('점심 추천 랜덤'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              recommendedMenu,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: getRandomMenu,
              child: Text(
                '추천 받기',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

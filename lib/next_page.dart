// 画面遷移後のページ内容記述

// stateful widget を使う時は[Option + Enter] で以下の Material.dart wおコーリング
import 'package:flutter/material.dart';
import 'package:newflutterwidget/third_page.dart';

// stf でステートフルウィジェットを作るためのパーツができる
class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    print("ウェルカム");
    // ここを Scafold など当該ペーじのレイアウトにする
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (BuildContext context, int i){
            return Column(
              children: [
                ListTile(
                  // ListTile の Ontapp メソッドがタップ時の処理
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThirdPage()
                        )
                    );
                  },
                  leading: Icon(Icons.vpn_key),
                  title: Text("please tapped"),
                ),
                Divider()
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: const Icon(Icons.add_to_home_screen_outlined),
        onPressed: (){
          print("3p目のプレスボタンで遷移");
          // Navigator.push(context, MaterialROute(builder:(cotext)=> すてーとふるうぃじぇっと ))
          // これ以外の遷移もたくさんあるよ。
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThirdPage()
            )
          );
        },
      ),
    );
  }
}

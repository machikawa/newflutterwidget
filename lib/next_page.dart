// 画面遷移後のページ内容記述

// stateful widget を使う時は[Option + Enter] で以下の Material.dart wおコーリング
import 'package:flutter/material.dart';
import 'package:newflutterwidget/third_page.dart';

// stf でステートフルウィジェットを作るためのパーツができる
class NextPage extends StatefulWidget {
//  const NextPage({Key? key}) : super(key: key);

  final String title;
  NextPage(this.title);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    print("ウェルカム");
    // ここを Scafold など当該ペーじのレイアウトにする
    return Scaffold(
      appBar: AppBar(
        // 気持ち悪いですが、 StatefulWidget クラスで定義された変数は widget. でアクセスする。
        title: Text(widget.title + "の今シーズンの成績") ,
      ),

      // あるウィジェット全体に余白などつけるときもそのウィジェット（ここだとColumn)をオプションエンター
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          // 位置の整理
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 横に並べるために Rowを使うよ
            Row(
              children: [
                // 3つのテキストを並べるのではなく、コンテナをさらに並べる
                Container(
                  width: 50,
                  child: Text("打率"),
                ),
                //オプション＋エンターでContaienrラップをえらべる
                Container(
                    width: 50,
                    child: Text("=")),
                Text("0.365"),
              ],
            ),
            // 余白を入れる 四隅 20 px
            Padding(padding: EdgeInsets.all(3),),
            Row(
              children: [
                Container(
                  width: 50,
                    child: Text("本塁打")
                ),
                Container(
                  width: 50,
                  child: Text("="),
                ),
                Text("3"),
              ],
            ),
          ],
    ),
      ),
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

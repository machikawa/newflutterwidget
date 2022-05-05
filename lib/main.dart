import 'package:flutter/material.dart';
import 'package:newflutterwidget/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '打線組んだ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: '2022年最強選手で打線組んだwww'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> titleList = ["高部","松本","山川","岡本"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // ListView の書き方はこちら
      //https://api.flutter.dev/flutter/material/ListTile-class.html
      // ICON はこちら　https://fonts.google.com/icons?selected=Material+Icons
      // ListView.builder はこちら https://docs.flutter.dev/cookbook/lists/long-lists
      body: ListView.builder(
        // リストのitem数. よくあるのは要素数
          itemCount: titleList.length,
          itemBuilder: (BuildContext context, int i) {
            return Column(
              children: [
                ListTile(
                  // ListTile の Ontapp メソッドがタップ時の処理
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NextPage()
                        )
                    );
                  },
                  leading: Icon(Icons.vpn_key),
                  title: Text(titleList[i]),
                ),
                Divider()
              ],
            );
          }
      ),
      // floating action はこちらhttps://api.flutter.dev/flutter/material/FloatingActionButton-class.html
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // titleList.add("aaa");
          // // もう一度 Buildをコール
          // setState(() {
          // });
          caller();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // onPressed の処理をメソッドに切り出すとこんな感じ
  void caller(){
    titleList.add("選手A ");
    print("call executed");
    setState(() {
    });
  }
}

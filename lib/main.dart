import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.white),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Icon(Icons.videocam,
            color: Colors.red,
            ),
            title: const Text(
                'KBOYのFlutter大学',
            ),
            actions: [
              SizedBox(
                width: 44,
                child: TextButton( onPressed: (){}, child: Icon(Icons.search),
                ),
              ),

              SizedBox(
                width: 44,
                child: TextButton(onPressed:(){}, child: Icon(Icons.more_vert),
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network('https://item-shopping.c.yimg.jp/i/n/msworks_tadrg-l-07',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                        const Text(
                            'KBOYのFlutter大学',
                      ),
                          TextButton(
                            child: Row(
                              children: [
                                Icon(Icons.videocam,
                                    color: Colors.red,
                                ),
                                Text('登録する'
                                ),
                              ],
                            ),
                            onPressed:(){
                              // TODO
                            },
                          ),
                    ],
                  ),
              ],
            ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: ()async{
                          //TODO:画面遷移
                         await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetailPage()
                            ),
                          );
                          },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          'https://item-shopping.c.yimg.jp/i/n/msworks_tadrg-l-07',
                        ),
                        title: Column(
                          children: [
                            Text('【Flutter超入門】リスト作りを作る方法',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500
                              ),
                            ),

                            Row(
                              children: [
                                Text('278再生',
                                  style: TextStyle(
                                      fontSize: 13
                                  ),),
                                Text('1日前',
                                  style: TextStyle(
                                      fontSize: 13
                                  ),),
                              ],
                            ),
                          ],
                        ),

                        trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
                ),
          ]
          ),
          ),
        ),
    );
  }
}

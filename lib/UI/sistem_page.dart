import 'package:sistem/Models/sistem.dart';
import 'package:sistem/Service/api_static.dart';
import 'package:sistem/UI/detail_sistem_page.dart';
import 'package:sistem/UI/home_page.dart';
import 'package:flutter/material.dart';

class sistemPage extends StatefulWidget {
  const sistemPage({ Key? key }) : super(key: key);

  @override
  _sistemPageState createState() => _sistemPageState();
}

class _sistemPageState extends State<sistemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text("Pencernaan pada Manusia"),
      ),
      body: FutureBuilder<List<Sistem>>(
          future: ApiStatic.getsistem(),
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              List<Sistem> listsistem=snapshot.data!;
              return Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: listsistem.length,
                  itemBuilder: (BuildContext context, int index)=>Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context)=>DetailSistemPage(sistem: listsistem[index],)
                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(top: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.lightGreenAccent)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network("http://192.168.43.14/program3/public/" + listsistem[index].foto,width: 40,),
                              Column(
                                children: [
                                  Text(listsistem[index].nama),
                                  Text(listsistem[index].fungsi, style: TextStyle(fontSize: 8),),
                                ],
                              )
                            ] 
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (i){
          switch (i){
            case 0:
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext context)=>HomePage()
                ));
              break;
            case 1:
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext context)=>sistemPage()
                ));
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Text("Pencernaan")),
        ],
      ),
    );
  }
}
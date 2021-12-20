import 'package:flutter/material.dart';
import 'package:sistem/UI/sistem_page.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    Widget build(BuildContext context) {
    final appTitle = 'Form Validation';

    return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
          ),
          // body:  formadd(),
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
        ));
    }
}

// class formadd extends StatefulWidget {

//   @override
//   _formaddState createState() {
//     return _formaddState();
//   } 
// }
// class _formaddState extends State<formadd> {
// final _formKey = GlobalKey<FormState>();

//           TextEditingController namaController = TextEditingController();
//           TextEditingController prosesController = TextEditingController();
//           TextEditingController enzimController = TextEditingController();
//           TextEditingController fungsiController = TextEditingController();
//         final format = DateFormat('yyyy-MM-dd');
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       key: _formKey,
//         child: ListView(
//           children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Mohon Isi Dengan Lengkap';
//                           }
//                           return null;
//                         },
//                           controller: namaController,
//                           decoration: InputDecoration(
//                           labelText: 'Nama Bagian',
//                           border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(3.0)),
//                         )),
//                       ),
//                       Padding(
//                       padding: EdgeInsets.all(8.0),
//                         child: TextFormField(
//                             controller: prosesController,
//                             decoration: InputDecoration(
//                             labelText: 'Proses yang terjadi',
//                             border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(3.0)),
//                                   )),
//                       ),
//                       Padding(
//                       padding: EdgeInsets.all(8.0),
//                         child: TextFormField(
//                             controller: enzimController,
//                             decoration: InputDecoration(
//                             labelText: 'Enzim',
//                             border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(3.0)),
//                                   )),
//                           ),
//                       Padding(
//                       padding: EdgeInsets.all(8.0),
//                         child: TextFormField(
//                             controller: fungsiController,
//                             decoration: InputDecoration(
//                             labelText: 'Fungsi Bagian',
//                             border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(3.0)),
//                                   )),
//                           ),
//                       Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 16.0),
//                           child: RaisedButton(
//                           onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                           Scaffold.of(context)
//                           .showSnackBar(SnackBar(content: Text('Processing Data')));
//                               }
//                             },
//                   child: Text('Submit'),
//             ),
//               ),
//         ],
//       ),
//     );


//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: 0,
//         onTap: (i){
//           switch (i){
//             case 0:
//                 Navigator.of(context).pushReplacement(new MaterialPageRoute(
//                   builder: (BuildContext context)=>HomePage()
//                 ));
//               break;
//             case 1:
//                 Navigator.of(context).pushReplacement(new MaterialPageRoute(
//                   builder: (BuildContext context)=>sistemPage()
//                 ));
//               break;
//             default:
//           }
//         },
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
//           BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Text("Pencernaan")),
//         ],
//       ); 
//   }
//   }
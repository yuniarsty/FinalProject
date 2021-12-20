import 'package:sistem/Models/sistem.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class ApiStatic {
  static final host ='http://192.168.43.14/program3/public';
  static getHost(){
    return host;
  }


  static Future<List<Sistem>> getsistem() async{
  
    // String response='{"current_page":1,"data":[{"id":2,"nama":"Kerongkongan","foto":"uploads\/sistems\/1634717447api get.png","proses":"mekanik\/kimiawi","enzim":"gerak peristaltik","fungsi":"saluran makanan","created_at":"2021-10-20T08:10:47.000000Z","updated_at":"2021-10-20T08:10:47.000000Z"},{"id":4,"nama":"Kerongkongan","foto":"uploads\/sistems\/16347181461.jpeg","proses":"mekanik\/kimiawi","enzim":"gerak peristaltik","fungsi":"saluran makanan","created_at":"2021-10-20T08:22:26.000000Z","updated_at":"2021-10-20T08:22:26.000000Z"},{"id":5,"nama":"Kerongkongan dan mulut","foto":"uploads\/sistems\/16347340591.jpeg","proses":"mekanik","enzim":"gerak peristaltik","fungsi":"saluran makanan","created_at":"2021-10-20T12:47:39.000000Z","updated_at":"2021-10-20T12:47:39.000000Z"}],"first_page_url":"http:\/\/192.168.43.14\/program3\/public\/api\/sistem?page=1","from":1,"last_page":1,"last_page_url":"http:\/\/192.168.43.14\/program3\/public\/api\/sistem?page=1","links":[{"url":null,"label":"« Previous","active":false},{"url":"http:\/\/192.168.43.14\/program3\/public\/api\/sistem?page=1","label":"1","active":true},{"url":null,"label":"Next »","active":false}],"next_page_url":null,"path":"http:\/\/192.168.43.14\/program3\/public\/api\/sistem","per_page":5,"prev_page_url":null,"to":3,"total":3}';
     try {
      final response= await http.get(Uri.parse("$host/api/sistem"));
      if(response.statusCode==200){
        // print('ss');
         var json=jsonDecode(response.body);
         print(json);
       final parsed= json['data'].cast<Map<String, dynamic>>(); 
       return parsed.map<Sistem>((json)=>Sistem.fromJson(json)).toList();    
      } else {
        return[];
       }
      } catch (e) {
        return[];
      }
    }
  }

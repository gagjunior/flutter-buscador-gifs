import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const String uriTop20 =
    'https://api.giphy.com/v1/gifs/trending?api_key=SHyDn3E3utOBbqGSOaH0K5WIwsjd07W0&limit=20&rating=g';

final Uri urlTop20 = Uri.parse(uriTop20);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search = '';
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == '') {
      response = await http.get(urlTop20);
    } else {
      Uri urlSearch = Uri.parse('https://api.giphy.com/v1/gifs/search?api_key=SHyDn3E3utOBbqGSOaH0K5WIwsjd07W0&q=$_search&limit=20&offset=$_offset&rating=g&lang=pt');
      response = await http.get(urlSearch);
    }

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    _getGifs().then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

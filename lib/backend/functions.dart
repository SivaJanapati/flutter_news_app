import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/utils/key.dart';
import 'package:news_app/widgets/searchbar.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=technology&pageSize=100&apiKey=' +
        Key.key +
        '&q=' +
        SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';

class ImageService {
  final String baseUrl = 'https://picsum.photos/v2/list';

  Future<List<ImageModel>> getImages() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl?limit=10'));
      
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => ImageModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load images');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }
}
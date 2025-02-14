```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success
      // Process the response
    } else {
      throw HttpException('HTTP error! Status code: ${response.statusCode}', Uri.parse('https://example.com/data'));
    }
  } on SocketException catch (e) {
    print('SocketException: $e'); // Handle network issues
  } on HttpException catch (e) {
    print('HttpException: ${e.message} at ${e.uri}');
  } on FormatException catch (e) {
    print('FormatException: $e'); // Handle JSON parsing errors
  } catch (e) {
    print('Unknown error: $e'); //If no other errors, this is where you should implement more details.
  }
}

class HttpException implements Exception {
  final String message;
  final Uri uri;
  HttpException(this.message, this.uri);
}
```
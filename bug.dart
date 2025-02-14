```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success
      // Process the response
    } else {
      // Error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Catching errors is important, but sometimes this doesn't catch everything
    print('Error: $e'); //Sometimes the exception is not as informative as you want
  }
}
```
```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final name = jsonData['name'];
      print(name);
    } else {
      // More specific error handling
      throw Exception('API request failed with status: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: $e');
  } catch (e) {
    // Handle other exceptions
    print('An unexpected error occurred: $e');
    // Consider logging this error to a monitoring service
  }
}
```
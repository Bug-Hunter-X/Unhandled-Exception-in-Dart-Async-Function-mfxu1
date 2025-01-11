```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data, for example
      final name = jsonData['name'];
      print(name);
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception, this is crucial
    print('Error: $e');
    // You might want to rethrow or handle differently depending on your needs
    rethrow; // Or handle it differently based on your app logic
  }
}
```
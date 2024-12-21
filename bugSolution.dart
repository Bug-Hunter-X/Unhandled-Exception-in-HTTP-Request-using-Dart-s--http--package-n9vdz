```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
      return; //added return to prevent unnecessary rethrow
    } else {
      // Handle error response
      //Instead of throwing an exception, handle it locally:
      print('Error: HTTP request failed with status: ${response.statusCode}');
      //Consider returning a default value or notifying the UI of the error.
      return; 
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    //Instead of rethrowing handle the exception appropriately here
     //Consider returning a default value or notifying the UI of the error.
    return;
  }
}
```
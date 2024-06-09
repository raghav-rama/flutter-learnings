
import "package:http/http.dart" as http;
import "dart:convert";

void main() async {
  var url = Uri.https("api.openweathermap.org", "data/3.0/onecall?lat={lat}&lon={lon}&exclude={part}&appid={API key}");
  try {
    final res = await http.get(url);
    final jsonResponse = jsonDecode(res.body);
    print(jsonResponse["current"]["temp"]);
  } catch (e) {
    print("Some error occured\n$e");
  }
}

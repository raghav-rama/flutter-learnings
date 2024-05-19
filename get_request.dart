import "package:http/http.dart" as http;
import "dart:convert";

void main() async {
  var url = Uri.https("6649d3014032b1331beee972.mockapi.io", "users/1");
  try {
    final res = await http.get(url);
    final jsonResponse = jsonDecode(res.body);
    print(jsonResponse["name"]);
  } catch (e) {
    print("Some error occured\n$e");
  }
}

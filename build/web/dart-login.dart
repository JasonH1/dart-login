import 'package:polymer/polymer.dart';

import 'dart:html';

/**
 * A Polymer click counter element.
 */
@CustomTag('dart-login')

class DartLogin extends PolymerElement with ChangeNotifier  {
  @reflectable @observable String get error => __$error; String __$error = ''; @reflectable set error(String value) { __$error = notifyPropertyChange(#error, __$error, value); }
  @reflectable @observable String get email => __$email; String __$email = ''; @reflectable set email(String value) { __$email = notifyPropertyChange(#email, __$email, value); }
  @reflectable @observable String get password => __$password; String __$password = ''; @reflectable set password(String value) { __$password = notifyPropertyChange(#password, __$password, value); }
    
  DartLogin.created() : super.created() {
    print('login polymer created');
    
  }

  void login() {
    print('login button pressed');
    print(email);
    print(password);
    HttpRequest request = new HttpRequest(); // create a new XHR
      
      // add an event handler that is called when the request finishes
      request.onReadyStateChange.listen((_) {
        if (request.readyState == HttpRequest.DONE &&
            (request.status == 200 || request.status == 0)) {
          // data saved OK.
          print(request.responseText); // output the response from the server
        }
      });

    // POST the data to the api login server
    var url = "https://api.example.com/login";
    request.open("POST", url, async: false);

    String jsonData = '{"email":"'+ email +'", "password": "'+ password + '"}'; // etc...
    request.send(jsonData); // perform the async POST
  }
}


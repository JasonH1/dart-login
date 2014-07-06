import 'package:polymer/polymer.dart';

import 'dart:html';

/**
 * A Polymer click counter element.
 */
@CustomTag('dart-login')

class DartLogin extends PolymerElement {
  @observable String error = '';
  @observable String email = '';
  @observable String password = '';
    
  DartLogin.created() : super.created() {
    print('login polymer created');
    
  }

  void login(Event event, var detail, Node target) {
     
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


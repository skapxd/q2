import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsProvider {

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications(){

    _firebaseMessaging.requestNotificationPermissions();

    _firebaseMessaging.getToken().then( (token) {

      print('========== FCM Token ==============');
      print(token);
    });
  }
}
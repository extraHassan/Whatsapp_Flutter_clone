import 'package:flutter/material.dart';

import 'call_card.dart';

class CallList extends StatelessWidget {
  // final List<Call> calls;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CallCard(
          callType: 'call_missed',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: false,
        ),
        CallCard(
          callType: 'call_received',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: false,
        ),
        CallCard(
          callType: 'call_received',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: true,
        ),
        CallCard(
          callType: 'call_received',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: true,
        ),
        CallCard(
          callType: 'call_received',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: true,
        ),
        CallCard(
          callType: 'call_received',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: false,
        ),
        CallCard(
          callType: 'call_received',
          callerName: 'BBA',
          dateTime: DateTime.now(),
          callerPic:
              'https://scontent.frba2-2.fna.fbcdn.net/v/t1.0-9/45317754_10218145311286883_5976422811718123520_n.jpg?_nc_cat=101&_nc_sid=7aed08&_nc_eui2=AeFKUOYNIphJ6X6DRiXxly_brK6d3cetVRGsrp3dx61VEdnRRfvIY3pvKlWcYFYCvMLMx0rX6qtIz6ozSYtDiMgg&_nc_ohc=2eItFqMjZDEAX8yV0Ne&_nc_ht=scontent.frba2-2.fna&oh=a7dd4db1ba792d0268e4a29301f6e05b&oe=5F186ACA',
          isVideoCall: true,
        ),
      ],
    );
  }
}

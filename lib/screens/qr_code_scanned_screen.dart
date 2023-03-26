import 'package:flutter/material.dart';

class QrCodeScannedScreen extends StatelessWidget {
  final imageUrl =
      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.epfl.ch%2Fabout%2Fsustainability%2Fprocurement-and-waste-management%2Fecopoints%2F&psig=AOvVaw2OSn6xig4ftxGvrcR8sGZK&ust=1679904751518000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLiayIGT-f0CFQAAAAAdAAAAABAE';
  static const routeName = '/qr-code-scanned-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanned'),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

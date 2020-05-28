import 'package:flutter/material.dart';

class PhotoViewDefaultError extends StatelessWidget {

  PhotoViewDefaultError({Key key, this.defaultUrl}) : super(key: key);
  final String defaultUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0x00000000),
      child: Center(
//        child:
//        defaultUrl == null ?
//        Icon(
//          Icons.broken_image,
//          color: Colors.grey[400],
//          size: 40.0,
//        ) :
//        NetworkImageWithPlaceholder(
//          defaultUrl,
//        ),
      ),
    );
  }
}

class PhotoViewDefaultLoading extends StatelessWidget {
  const PhotoViewDefaultLoading({Key key, this.event, this.defaultUrl}) : super(key: key);

  final ImageChunkEvent event;
  final String defaultUrl;

  @override
  Widget build(BuildContext context) {
    final value = event == null
        ? 0.0
        : event.cumulativeBytesLoaded / event.expectedTotalBytes;
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0x00000000),
        child: Stack(children: <Widget>[
          defaultUrl == null ? Container() : Center(
//            child: NetworkImageWithPlaceholder(
//              defaultUrl,
//            ),
          ),
          Center(
            child: Container(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(value: value),
            ),
          ),
        ])
    );
  }
}

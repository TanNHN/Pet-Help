import 'package:flutter/material.dart';
import 'dart:async';

import 'package:multi_image_picker/multi_image_picker.dart';

class ImgLoad extends StatefulWidget {
  @override
  _ImgLoadState createState() => new _ImgLoadState();
}

class _ImgLoadState extends State<ImgLoad> {
  List<Asset> images = List<Asset>();
  String _error = 'No Error Dectected';

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];

        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Chọn ảnh",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/proxy/oxIRPMpDWBvUUM8bH0xRl79PujP1ogms1Kn_ZhFATt9cnLk7Ooqgf9RUMhdLUIPe4EIkTdZcj3fd1E1FXzJ4OD_wIgHsjOecYYuT5QdA2Yace7SeVTo6ETNRZK5J',
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black54,
                      offset: new Offset(1.0, 2.0),
                      blurRadius: 3.5),
                ]),
            height: 290,
            width: 340,
            child: Expanded(
              child: buildGridView(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
            child: RaisedButton.icon(
              label: Text("Upload Image"),
              icon: Icon(Icons.camera_alt),
              color: Colors.white,
              onPressed: loadAssets,
            ),
          ),
        ],
      ),
    );
  }
}

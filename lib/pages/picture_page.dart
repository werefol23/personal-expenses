import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PicturePage extends StatefulWidget {
  PicturePage({Key key}) : super(key: key);

  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  List<Image> imgs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Taking Photos')),
      body: ListView.builder(
        itemCount: imgs.length,
        itemBuilder: (context, i) => Column(children: [imgs[i], Divider()]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var imgFile = await ImagePicker.pickImage(
            source: ImageSource.camera,
            imageQuality: 50
          );
          print(imgFile);
          setState((){
            imgs.add(Image.file(imgFile));
          });
        }
      ),
    );
  }
}

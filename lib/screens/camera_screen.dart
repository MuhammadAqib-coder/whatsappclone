import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({
    super.key,
  });

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late ImagePicker picker;
  XFile? file;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    picker = ImagePicker();
    getCamera();
    //picker.pickImage(source: ImageSource.camera);
  }

  getCamera() async {
    file = await picker.pickImage(source: ImageSource.camera);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //getCamera();
    return Center(
        child: Container(
      child: CupertinoButton.filled(
          child: const Text("Photo"),
          onPressed: () {
            getCamera();
          }),
    ));
  }

  getCameraAgin() async {
    file = await picker.pickImage(source: ImageSource.camera);
  }
}

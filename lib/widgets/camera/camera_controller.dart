// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class CemeraScreen extends StatefulWidget {
//   @override
//   _CemeraScreenState createState() => _CemeraScreenState();
// }

// class _CemeraScreenState extends State<CemeraScreen> {
//   CameraController controller;
//   List cameras;
//   int selectedCameraIndex;
//   String imagePath;

//   @override
//   void initState() {
//     super.initState();

//     availableCameras().then((availableCameras) {
//       cameras = availableCameras;
//       if (availableCameras.length > 0) {
//         setState(() {
//           selectedCameraIndex = 0;
//         });
//         _initCameraController(cameras[selectedCameraIndex]);
//       } else {
//         print('no camera available');
//       }
//     }).catchError((err) {
//       print('Error: ${err.code}\nError Message: ${err.message}');
//     });
//   }

//   Future _initCameraController(CameraDescription cameraDescription) async {
//     if (controller != null) {
//       await controller.dispose();
//     }

//     controller = CameraController(cameraDescription, ResolutionPreset.max);

//     controller.addListener(() {
//       if (mounted) {
//         setState(() {});
//       }

//       if (controller.value.hasError) {
//         print('Camera error ${controller.value.errorDescription}');
//       }
//     });

//     try{
//       await controller.initialize(); 
//     }on CameraException catch(e){
//       // _showCameraException(e); 
//     }

//     if(mounted){
//       setState(() {
        
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _cameraPreviewWidget();
//   }

//   Widget _cameraPreviewWidget() {
//   if (controller == null || !controller.value.isInitialized) {
//     return const Text(
//       'Loading',
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 20.0,
//         fontWeight: FontWeight.w900,
//       ),
//     );
//   }

//   return AspectRatio(
//       aspectRatio: controller.value.aspectRatio,
//       child: CameraPreview(controller),
//     );
// }
// }

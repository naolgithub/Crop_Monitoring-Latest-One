import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' as MainIO;
import 'dart:convert';

// ignore: non_constant_identifier_names
Future<Response?>  UploadIamgeToModel(XFile file)async {
     String fileName = file.path;
    String apiEndpoint = 'https://detect.roboflow.com/m-detection/1?api_key=atEMIYh41wkXFFDVqrSq';
    

    MainIO.File fileE = MainIO.File(fileName);
 
   FormData formData = FormData.fromMap({
    "image": await MultipartFile.fromFile(
      fileE.path, 
      filename: fileName
    )
  });
    print("data" + formData.toString());

    Dio dio = Dio();
    try{
    Response response = await dio.post(apiEndpoint, data: formData, options: Options(method: "POST", headers: {'Content-Type': 'multipart/form-data',
      },));
      return response;
    }catch(e){
      print(e.toString());
    }
    return null;
}

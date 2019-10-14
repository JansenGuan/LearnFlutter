
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sencondfluuter/Const/UrlConst.dart';

enum MethodType{
  kGET,
  kPOST
}

typedef SuccessCallBack = void Function(dynamic data);

typedef ErrorCallBack = void Function(dynamic error);

class HttpTool{
  /// 网络请求
  /// - method: 请求方式'GET' or 'POST'
  /// - url: "/home/list"
  /// - para: 请求参数Map<String, dynamic>
  /// - header: 请求头Map<String, dynamic>
  /// - success: 成功回调
  /// - error: 失败回调
  static Future<Response<dynamic>> send(MethodType method, 
              String path, 
              { Map<String, dynamic> para, 
                Map<String, dynamic> header,
                SuccessCallBack onSuccess,
                ErrorCallBack onError
                }) async{
    
    var options = new BaseOptions(
          baseUrl: BaseUrl.rootUrl,
          headers: _headerParas(header),
          responseType: ResponseType.json,
          // queryParameters: para,
          method: method == MethodType.kGET ? 'GET' : 'POST',
          connectTimeout: 45000,
        );

    var dio = new Dio(options);
      return await dio.request(path, data: para).then((res){
        onSuccess(res);
      }).catchError((error){
        onError(error);
      });
  }

  /// 下载请求
  static Future<Response<dynamic>> downLoad(MethodType method, 
                  String path, 
                  String savePath, 
                  { Map<String, dynamic> para, 
                    Map<String, dynamic> header, 
                    ProgressCallback progressHander,
                    SuccessCallBack onSuccess,
                    ErrorCallBack onError}) async{

    var options = new BaseOptions(
          baseUrl: BaseUrl.rootUrl,
          headers: _headerParas(header),
          responseType: ResponseType.json,
          contentType: ContentType.json,
          method: method == MethodType.kGET ? 'GET' : 'POST',
          connectTimeout: 45000,
        );

    var dio = new Dio(options);
    return await dio.download(path, savePath, data: para, onReceiveProgress: progressHander).then((res){
      onSuccess(res);
    }).catchError((err){
      onError(err);
    });
  }


  /// 获取公共请求头
  static Map<String, dynamic> _getCommonHeader(){
    return {};
  }

  /// 所有请求头参数
  static Map<String, dynamic> _headerParas(Map<String, dynamic> header){
    var commonHeader = _getCommonHeader();
    if (header != null && header.isNotEmpty) {
      commonHeader.addAll(header);
    }
    return commonHeader;
  }
}


// var response;
// if (method == MethodType.kGET) {
//   response = await dio.get(path).then((res){
//     success(res);
//   }).catchError((error){
//     error(error);
//   });
// }else{
//   response = await dio.post(path).then((res){
//     success(res);
//   }).catchError((error){
//     error(error);
//   });
// }
// return response.data;


// 多网络请求
// Future.wait([
      
//       HttpTool.downLoad(MethodType.kGET, 'path', 'savePath', onSuccess: (res){

//       }, onError: (erro){

//       }),
      
//       HttpTool.send(MethodType.kGET, 'path', onSuccess: (res){

//       }, onError: (error){

//       })
//       ]
//     ).then((res){

//     });


class Manager{
  factory Manager() => _shareInstance();

  static Manager get instance => _shareInstance();

  static Manager _instance;

  Manager._initInstance(){
    //
  }

  static Manager _shareInstance(){
    if (_instance == null) {
    _instance = Manager._initInstance();
    }
    return _instance;
  }
}
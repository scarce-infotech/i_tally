import 'package:i_tally/constants/api_url.dart';

class API {
  static const String BASE_URL = AppUrl.baseUrl;
  static const login = 'Auth/login';
  static const userAccessList = 'User/userAccessList';
  static const getIndexItemList = '{objectName}?skip={skip}&take={take}&param={param}';
  static const getFileAttachmentList = 'FileAttachment?obj={objectName}&rid={recordId}';
  static const delete = '{objectName}/{id}';
  static const get = '{objectName}/{id}';
  static const search = '{objectName}/search?val={param}';
  static const create = '{objectName}';
  static const upload = 'FileAttachment?rid={recordId}&obj={objectName}&name={uniqueName}&fdocumenttype={documentType}';
  static const changepassword = 'Auth/change-password';
}
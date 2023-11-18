class APIResponse{
  int? statusCode;
  String? message;
  String? status;
  dynamic? iTallyData;
  dynamic? tab;
  int? maxAllowable;
  String? subscriptionExpity;
  int? rowCount;
  int? filterCount;
  String? allowEmail;
  dynamic? controls;

  APIResponse({
    this.statusCode,
    this.message,
    this.status,
    this.iTallyData,
    this.tab,
    this.maxAllowable,
    this.subscriptionExpity,
    this.rowCount,
    this.filterCount,
    this.allowEmail,
    this.controls,
  });

   APIResponse.fromJson(Map<String, dynamic> json) {
     statusCode = json['statusCode'];
     message = json['message'];
     status = json['status'];
     iTallyData = json['iTallyData'];
     tab = json['tab'];
     maxAllowable = json['maxAllowable'];
     subscriptionExpity = json['subscriptionExpity'];
     rowCount = json['rowCount'];
     filterCount = json['filterCount'];
     allowEmail = json['allowEmail'];
     controls = json['controls'];
   }

/*
  APIResponse.fromJson(Map<String, dynamic> json) {
    //print('---------------------------deserializing------------------');
    //print('Deserializing: $json');
    statusCode = json['statusCode'];
    //print('statusCode: $statusCode');
    message = json['message']; // This will be null since it's not in the JSON response.
    status = json['status'];
    iTallyData = json['iTallyData'];
    tab = json['tab']; // This will be null since it's not in the JSON response.
    maxAllowable = json['maxAllowable']; // This will be null since it's not in the JSON response.
    subscriptionExpity = json['subscriptionExpity']; // Corrected to match the JSON key.
    rowCount = json['rowCount']; // This will be null since it's not in the JSON response.
    filterCount = json['filterCount']; // This will be null since it's not in the JSON response.
    allowEmail = json['allowEmail']; // This will be null since it's not in the JSON response.
    controls = json['controls']; // This will be null since it's not in the JSON response.
  }
*/


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    data['status'] = status;
    data['iTallyData'] = iTallyData;
    data['tab'] = tab;
    data['maxAllowable'] = maxAllowable;
    data['subscriptionExpity'] = subscriptionExpity;
    data['rowCount'] = rowCount;
    data['filterCount'] = filterCount;
    data['allowEmail'] = allowEmail;
    data['controls'] = controls;
    return data;
  }

}
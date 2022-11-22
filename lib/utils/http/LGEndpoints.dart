class LGEndpoints {
  LGEndpoints._();

  static const String baseURL =
      'https://dn4wbf8jgg.execute-api.ap-southeast-1.amazonaws.com/develop/api';
  static const int receiveTimeout = 5000;

  static const int connectionTimeout = 3000;

  static const String acctMgmtPath = '/acct-mgmt';
  static const String orderPath = '/order';
  static const String notificationPath = '/notification';
}

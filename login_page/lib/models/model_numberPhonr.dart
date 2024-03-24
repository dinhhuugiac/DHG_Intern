class ModelData{
  String _phoneNumber ;
  String _countryCode ;
  ModelData(this._phoneNumber,this._countryCode,) ;
  String get phoneNumber => _phoneNumber;
  String get countryCode => _countryCode;

  set phoneNumber(String phoneNumber){
    _phoneNumber = phoneNumber;
  }
  set countryCode(String countryCode){
    _countryCode = countryCode;
  }
}
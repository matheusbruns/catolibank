import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _cvv = prefs.getInt('ff_cvv') ?? _cvv;
    _blockedCard = prefs.getString('ff_blockedCard') ?? _blockedCard;
    _numberCard = prefs.getDouble('ff_numberCard') ?? _numberCard;
  }

  late SharedPreferences prefs;

  int pixReceived = 0;

  double amoutTransfer = 0.0;

  int _cvv = 0;
  int get cvv => _cvv;
  set cvv(int _value) {
    _cvv = _value;
    prefs.setInt('ff_cvv', _value);
  }

  String _blockedCard = '';
  String get blockedCard => _blockedCard;
  set blockedCard(String _value) {
    _blockedCard = _value;
    prefs.setString('ff_blockedCard', _value);
  }

  double _numberCard = 0.0;
  double get numberCard => _numberCard;
  set numberCard(double _value) {
    _numberCard = _value;
    prefs.setDouble('ff_numberCard', _value);
  }

  double amountCharge = 0.0;

  int pixCharge = 0;

  String uidCharge = '';

  double amountFinish = 0.0;
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

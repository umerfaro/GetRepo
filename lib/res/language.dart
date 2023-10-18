
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'message': 'Hello World',
      'title': 'GetX Demo',

    },
    'ur_PK': {
      'message': 'ہیلو ورلڈ',
      'title': 'GetX ڈیمو',

    },
  };

}
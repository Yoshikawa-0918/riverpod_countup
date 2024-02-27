import 'package:flutter_riverpod/flutter_riverpod.dart';

//titleを呼び出すプロバイダー
final titleProvider = Provider<String>((ref) {
  return 'Riverpod Demo Home Page';
});

//messageを呼び出すプロバイダー アロー関数を用いた書き方
final messageProvider =
    Provider<String>((ref) => 'You have pushed the button this many times:');

//countを保持するプロバイダー
final countProvider = StateProvider<int>((ref) => 0);

/*
  なぜConsumerを使うのか
  ・ConsumerWidgetのままでは、値に変更が加わるとtitleやmessageなどstaticなものまでリビルドされてしまう。
  ・Consumerを使えば、変更が加わった部分だけリビルドさせることができる
 */

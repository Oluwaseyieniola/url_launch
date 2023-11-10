import 'package:browser_launcher/browser_launcher.dart';

const _googleURL = 'https://twitter.com/home';
const _googleImagesUrl = 'https://www.google.com/imghp?hl=en';

Future<void> main() async {
  await Chrome.start([_googleURL, _googleImagesUrl]);
  print('launched twitter');
  await Future<void>.delayed(const Duration(seconds: 3));

  await Future<void>.delayed(const Duration(seconds: 3));

  final chrome = await Chrome.startWithDebugPort([_googleURL], debugPort: 8888);
  print('launch your chrome in debug mode');

  await Future<void>.delayed(const Duration(seconds: 3));
}

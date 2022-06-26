import 'package:textless/textless.dart';

extension TextLessCustom on String {
  ThemedText get sss => ThemedText(data: this, style: (t) => t.overline!.copyWith(fontSize: 12));
  ThemedText get ss => ThemedText(data: this, style: (t) => t.overline!.copyWith(fontSize: 14));
  ThemedText get s => ThemedText(data: this, style: (t) => t.overline!.copyWith(fontSize: 16));
  ThemedText get m => ThemedText(data: this, style: (t) => t.overline!.copyWith(fontSize: 18));
  ThemedText get l => ThemedText(data: this, style: (t) => t.overline!.copyWith(fontSize: 20));
  ThemedText get xl => ThemedText(data: this, style: (t) => t.overline!.copyWith(fontSize: 22));
}

# flutterdemo

A Flutter demo application.

## Examples

#### Environment
example for running with prod environment
```bash
flutter run -t lib/main_prod.dart
```

#### MVVM
all pages apply with MVVM

#### Router / Navigation
apply with lib `stacked_services` & `auto_route`

#### Tab Layout
example in Tab Layout

#### `Deeps Links` / `Custom URL schemes`
Test: [Android] adb shell 'am start -W -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "poc://flutter.demo/github_user?keyword=wcl"'

Test: [iOS] /usr/bin/xcrun simctl openurl booted "poc://flutter.demo/github_user?keyword=wcl"

Ref: https://pub.dev/packages/uni_links

#### Image Picker
example in Image Picker

## iOS Part

Some examples need configuration or coding at platform side, miss iOS part currently.

- `Deeps Links` / `Custom URL schemes`: https://pub.dev/packages/uni_links
- Image Picker: https://pub.dev/packages/image_picker
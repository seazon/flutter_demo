# flutterdemo

A Flutter demo application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Examples

#### MVVM
example in Github User Search

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
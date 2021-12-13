# authentication_frontend

# freezed関連
## 必要なパッケージ
```
flutter pub add freezed_annotation
flutter pub add build_runner
flutter pub add freezed
flutter pub add json_serializable
flutter pub add json_annotation
```
## アノテーションビルドコマンド
通常時 

```
flutter pub run build_runner build
```
強制的に生成
```
flutter pub run build_runner build --delete-conflicting-outputs
```
変更を検知して、ファイル保存時に生成
```
flutter pub run build_runner watch
```
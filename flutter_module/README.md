# flutter_module

A new Flutter module project.

## Getting Started

For help getting started with Flutter development, view the online
[documentation](https://flutter.dev/).

For instructions integrating Flutter modules to your existing applications,
see the [add-to-app documentation](https://flutter.dev/docs/development/add-to-app).


### l10n使用
[参考](https://flutter.cn/docs/accessibility-and-localization/internationalization#messages-with-numbers-and-currencies)
```
flutter gen-l10n
```


### JSON序列化
[参考](https://flutter.cn/docs/data-and-backend/serialization/json)
```
一次性代码生成
flutter pub run build_runner build --delete-conflicting-outputs
持续生成代码
flutter pub run build_runner watch
```

### 安卓集成方式aar
```
flutter build aar
```
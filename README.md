# flutter-template

Flutter & Firebase __Responsive UI__ project template


## Project architecture
MVVM
* Model
* View
* View model

## Getting started
```
$ flutter create --org {com.companyname.packagename} {project_name}

# or

$ flutter create --androidx -t app --org {com.companyname.packagename} -a kotlin -i swift {project_name}

# example
$ flutter create --org com.user.myapp flutter_project
```

## Recommended packages
* [pedantic](https://pub.dev/packages/pedantic)
* [GetX](https://pub.dev/packages/get)
* [freezed](https://pub.dev/packages/freezed)

* [responsive_builder](https://pub.dev/packages/responsive_builder)

```
$ flutter pub add pedantic
$ flutter pub add get
$ flutter pub add freezed

$ flutter pub add responsive_builder

$ echo include: package:pedantic/analysis_options.yaml > analysis_options.yaml
```



## Tips

### Build flutter project, chrome 
```
# Build for freezed
$ flutter pub run build_runner build

$ flutter run -d chrome
# or
$ flutter run -d web-server --web-port 8080
```

### Test .dart /test
```
$ flutter test --machine test/widget_test.dart
# or just
$ flutter test
```

---

### Release Build, chrome
```
$ flutter run -d chrome --release
# check /build/web/
```

### Firebase hosting
```
$ firebase init

# Set /build/web for deploy directory to hosting

$ firebase deploy --only hosting
# or just
$ firebase deploy
```


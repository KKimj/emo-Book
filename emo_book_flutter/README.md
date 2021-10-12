# Book suggestion service with User Emotion

## Procedure
```
$ flutter create --org com.kkimj.emobook emo_book_flutter
```

### Project architecture
MVVM
* Model
* View
* View model


### Packages
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



### Build flutter project, chrome 
```
# Build for freezed
$ flutter pub run build_runner build

$ flutter run -d chrome --web-renderer html
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
$ flutter run -d chrome --release --web-renderer html

or 

$ flutter build web --web-renderer html --release


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

### Google Book API

https://pub.dev/packages/googleapis

https://developers.google.com/books

```
$ curl -X GET "https://dapi.kakao.com/v3/search/book?sort=accuracy&page=1&size=10&target=isbn&query={isbn}" \
	-H "Authorization: KakaoAK {REST_API_KEY}"
```

### Book serach API

https://pub.dev/packages/books_finder


## Build Docs with `dartdoc`

### Prerequisite

```
$ flutter pub global activate dartdoc
$ flutter pub global activate dhttpd
```

### Bulid
```
$ flutter pub global run dartdoc --input ./emo_book_flutter --output ./docs --favicon ./emo_book_flutter/web/favicon.ico
```

### Local Test
```
$ flutter pub global run dhttpd --path ./docs
```

http://localhost:8080/

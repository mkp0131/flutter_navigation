# flutter_navigation

## [flutter] Navigation 위젯 변수 전달

### Constructor 이용

- class의 파라미터로 변수 전달

```dart
onPressed: () {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (BuildContext context) {
    return OneScreen(number: 456);
  }));
```

- 멤버변수 받기

```dart
class MainLayout extends StatelessWidget {
  final List<Widget> children;
  final String title;

  const MainLayout({required this.children, required this.title, Key? key})
      : super(key: key);
```

## settings arguments 이용

- arguments 로 변수 전달

```dart
ElevatedButton(
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => TowScreen(),
          settings: RouteSettings(arguments: 7899),
        ),
      );
    },
```

- 변수 받기

```dart
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(children: [Text(arguments.toString())], title: 'Tow');
  }
```


## [flutter] 라우트 Route

- main.dart 파일에 route 를 설정해준다.

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 앱이 처음 실행될 라우트
      routes: { // 라우트 리스트
        '/': (context) => HomeScreen(),
        '/one': (context) => OneScreen(),
        '/two': (context) => TowScreen(),
        '/three': (context) => ThreeScreen(),
      },
    );
  }
}
```

- 실제파일에서 페이지 이동
- pushNamed 를 사용, arguments 도 두번째 인자로 전달.

```dart
ElevatedButton(
    onPressed: () {
      Navigator.of(context).pushNamed('/three', arguments: 2939);
    },
```

- 전달받은 위젯에서 arguments 의 사용법은 동일하다.

```dart
  Widget build(BuildContext context) {
    final number = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(children: [
      Text(number.toString()),
    ], title: 'Three');
  }
```


## [flutter] 라우트 리다이렉트

### 리다이렉트(리플레이스)

- `pushReplacementNamed` 를 사용

```dart
  ElevatedButton(
    onPressed: () {
      Navigator.of(context).pushReplacementNamed(
        '/one',
        arguments: 7777,
      );
    },
```

### 리다이렉트 (원하는 곳까지 라우트 삭제)

- '/' 직전까지 삭제

```dart
ElevatedButton(
    onPressed: () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/',
        (route) => route.settings.name == '/', // 홈화면 바로 직전까지 라우트를 삭제
      );
    },
```

- 홈화면으로 돌아가기 원하는 경우 false 를 리턴한다.

```dart
  ElevatedButton(
    onPressed: () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/',
        (route) => false, // 첫화면까지 라우트를 삭제
      );
    },
```

[flutter] 뒤로가기 방지

- maybePop() 을 사용한다.
- WillPopScope() 를 사용하여, 안드로이드의 뒤로가기도 제어 할 수 있다.

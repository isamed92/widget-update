import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Busca la comida',
      caption: 'Sunt magna do voluptate et occaecat consectetur in ea fugiat.',
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Entrega rapida',
      caption: 'Duis sint ut id cupidatat.',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Disfruta la comida',
      caption: 'Sunt reprehenderit officia amet voluptate nisi nostrud.',
      imageUrl: 'assets/images/3.png'),
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({Key? key}) : super(key: key);

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();

  bool endReach = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReach && page >= (slides.length - 1.5)) {
        setState(() {
          endReach = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((e) => _Slide(
                      title: e.title, caption: e.caption, url: e.imageUrl))
                  .toList(),
            ),
            Positioned(
                right: 20,
                top: 50,
                child: TextButton(
                    child: const Text('Skip'), onPressed: () => context.pop())),
            endReach
                ? Positioned(
                    bottom: 30,
                    right: 30,
                    child: FadeInRight(
                      from: 15,
                      delay: const Duration(seconds: 1),
                      child: FilledButton(
                        child: const Text('Comenzar'),
                        onPressed: () {},
                      ),
                    ))
                : const SizedBox()
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  const _Slide({required this.title, required this.caption, required this.url});
  final String title;
  final String caption;
  final String url;
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(url),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: captionStyle,
          ),
        ],
      )),
    );
  }
}

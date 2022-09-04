import 'package:flutter/material.dart';
import 'package:pro_widgets/pro_widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pro_widgets',
      home: UdWidgetsDemo(),
    );
  }
}

class UdWidgetsDemo extends StatelessWidget {
  const UdWidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const ProText(
          text: "AppBar",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const ProGap(y: 20),
              const ProText(text: "Text"),
              const ProGap(y: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ProShape(
                    width: 50,
                    height: 50,
                    child: ProText(text: 'Shape', color: Colors.white),
                  ),
                  ProGap(x: 20),
                  ProShape(
                    width: 50,
                    height: 50,
                    radius: 4,
                    child: ProText(text: 'Shape', color: Colors.white),
                  ),
                ],
              ),
              const ProGap(y: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ProAssetImage(
                    imagePath: "assets/nature.jpg",
                    width: 100,
                    height: 100,
                    borderRadius: 50,
                  ),
                  const ProGap(x: 20),
                  ProTapper(
                    onTap: () {},
                    child: const ProNetworkImage(
                      width: 100,
                      height: 100,
                      imageUrl: "https://googleflutter.com/sample_image.jpg",
                    ),
                  ),
                ],
              ),
              const ProGap(y: 30),
              ProCard(
                width: 315,
                height: 100,
                borderRadius: 4,
                backgroundColor: const Color(0xff0077d7),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      ProText(
                        text: "Card",
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const ProGap(y: 30),
              ProButtonBasic(
                text: "Button",
                width: 315,
                borderRadius: 4,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

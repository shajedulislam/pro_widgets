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
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: const ProText(
          text: "App Bar",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const ProGap(y: 16),
              const ProText(text: "This is a text"),
              const ProGap(y: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ProShape(
                    width: 60,
                    height: 60,
                    radius: 30,
                    child: ProText(text: 'Shape', color: Colors.white),
                  ),
                  ProGap(x: 20),
                  ProShape(
                    width: 60,
                    height: 60,
                    radius: 4,
                    child: ProText(
                      text: 'Shape',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const ProGap(y: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: proBoxDecoration(
                      enableShadow: true,
                      shadowColor: Colors.blueGrey.withOpacity(0.3),
                      borderRadius: 50,
                    ),
                    child: const ProAssetImage(
                      imagePath: "assets/sia.jpg",
                      width: 100,
                      height: 100,
                      borderRadius: 50,
                      boxFit: BoxFit.cover,
                    ),
                  ),
                  const ProGap(x: 20),
                  ProTapper(
                    onTap: () {},
                    child: const ProNetworkImage(
                      width: 100,
                      height: 100,
                      borderRadius: 4,
                      imageUrl: "https://googleflutter.com/sample_image.jpg",
                    ),
                  ),
                ],
              ),
              const ProGap(y: 16),
              ProCard(
                width: 300,
                borderRadius: 4,
                shadowColor: Colors.blueGrey.withOpacity(0.3),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: const [
                      ProText(
                        text: "Card",
                        fontSize: 18,
                      ),
                      ProGap(y: 16),
                      ProTextField(
                        width: 200,
                        height: 45,
                        hint: "Text Field",
                      ),
                      ProGap(y: 16),
                      ProTextFormField(
                        width: 200,
                        paddingVertical: 14,
                        hint: "Text Form Field",
                      ),
                    ],
                  ),
                ),
              ),
              const ProGap(y: 16),
              ProButtonBasic(
                text: "Button",
                width: 300,
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

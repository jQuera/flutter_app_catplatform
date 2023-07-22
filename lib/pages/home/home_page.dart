import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TransformationController _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super social cat'),
      ),
      body: InteractiveViewer(
        transformationController: _controller,
        maxScale: 20,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black),
                        ),
                        child: GridView.builder(
                          itemCount: 12,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(3),
                              child: Image.network('https://picsum.photos/300'),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Image.network('https://picsum.photos/150/200')
            ],
          ),
        ),
      ),
    );
  }
}

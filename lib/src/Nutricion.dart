import 'package:flutter/material.dart';

class Nutricion extends StatefulWidget {
  const Nutricion({Key? key}) : super(key: key);

  @override
  _Nutricion createState() => _Nutricion();
}

class _Nutricion extends State<Nutricion> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (next != _currentPage) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  Widget buildPageIndicator(int pageCount, int currentPage) {
    List<Widget> indicators = [];

    for (int i = 0; i < pageCount; i++) {
      indicators.add(
        Container(
          width: 15.0,
          height: 15.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == currentPage
                ? const Color.fromARGB(255, 255, 0, 162)
                : const Color.fromARGB(255, 255, 152, 234),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 162, 218),
        title: const Text('Nutricion'),
        centerTitle: true,
      ),
      extendBody: true,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 140, 213),
                Color.fromARGB(255, 255, 140, 240),
                Color.fromRGBO(255, 190, 242, 1),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: <Widget>[
                      //
                    ],
                  ),
                ),
              ),
              // Segunda pantalla
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: <Widget>[
                    //
                  ],
                ),
              ),
              //tercera pantalla
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: <Widget>[
                    //
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildPageIndicator(3, _currentPage),
    );
  }
}

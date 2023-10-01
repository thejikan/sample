import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/router/appRoutesEnum.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List text = [
      'EMPLOYEE 1',
      'EMPLOYEE 2',
      'EMPLOYEE 3',
      'EMPLOYEE 4',
      'EMPLOYEE 5',
      'EMPLOYEE 6',
      'EMPLOYEE 7',
      'EMPLOYEE 8',
      'EMPLOYEE 9',
      'EMPLOYEE 10'
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Home'),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.dehaze),
              tooltip: 'Dashboard',
              onPressed: () {
                context.go(AppRoutes.login.routePath);
              },
            ),
          ],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount:
                    MediaQuery.of(context).size.width > 420.0 ? 3 : 2,
                children: List.generate(text.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      context.go(AppRoutes.info.routePath, extra: text[index].toString());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 8,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.dehaze),
                                tooltip: 'Image',
                                onPressed: () {
                                  // handle the press
                                },
                              ),
                              const Spacer(),
                              Text(
                                text[index].toString(),
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ));
  }
}

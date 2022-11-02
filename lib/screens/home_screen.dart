import 'package:fl_components/router/app_router.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  AppRouter.menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(AppRouter.menuOptions[index].name),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const Listview1Screen(),
                  // );
                  // Navigator.push(context, route);

                  Navigator.pushNamed(
                      context, AppRouter.menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRouter.menuOptions.length),
    );
  }
}

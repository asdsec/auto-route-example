import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../product/navigator/app_router.gr.dart';
import 'model/user_model.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(''.randomSquareImage),
        ),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              context.router.navigate(UserDetailRoute(
                model: UserModel(
                  avatarUrl: ''.randomSquareImage,
                  imageUrl: ''.randomImage,
                ),
              ));
            },
            child: Card(
              child: index.isOdd ? Image.network(''.randomImage) : Image.network(''.randomSquareImage),
            ),
          );
        },
      ),
    );
  }
}

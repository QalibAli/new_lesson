import 'package:first_lesson/data/model/users_model.dart';
import 'package:first_lesson/utils/constants/app_color.dart';
import 'package:first_lesson/utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = UsersModel.users;
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        // scrollDirection: Axis.horizontal,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final user = users[index];
          return Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            margin: AppPaddings.h22v22,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.white,
            ),
            child: Padding(
              padding: AppPaddings.all6,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(user.profilePhoto),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.username),
                      Text(user.jobName),
                    ],
                  ),
                  const Spacer(),
                  Icon(user.icon , color: user.color,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

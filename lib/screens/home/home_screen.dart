import 'package:dycca_user_app/custom_widgets/const_appbar.dart';
import 'package:dycca_user_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
List tabs = ['For you','Dance battle','Rap battle'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: DashboardAppbarWidget.getAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("All",
                        style: fontStyle(neutral6Color, FontWeight.w500, 16)),
                    GestureDetector(
                      onTap: () {},
                      child: Text("Performing arts",
                          style: fontStyle(neutral6Color, FontWeight.w500, 16)),
                    ),
                    Text("Visual arts",
                        style: fontStyle(neutral6Color, FontWeight.w500, 16)),
                  ],
                ),
                const SizedBox(height: 20,),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Image.asset(
                          'assets/images/select_profession.png',
                          height: 100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Novlik D-pac",
                              style: fontStyle(neutral6Color, FontWeight.w600, 16),
                            ),
                            Text(
                              "Competition Dance Battle",
                              style: fontStyle(primaryColor, FontWeight.w400, 14),
                            ),
                            Text(
                              "Rock Vick Studio",
                              style: fontStyle(neutral5Color, FontWeight.w500, 16),
                            ),
                            Text(
                              "Discovering Unknown Food Safety Risk….More",
                              style: fontStyle(neutral5Color, FontWeight.w400, 16),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

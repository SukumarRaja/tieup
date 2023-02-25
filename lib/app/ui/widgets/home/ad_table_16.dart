import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class AdTable16 extends StatelessWidget {
  const AdTable16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Table(
        border: TableBorder.all(
            width: 2,
            color: AppColors.gradient.withOpacity(.4),
            borderRadius: BorderRadius.circular(8.0)),
        children: [
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27606239/l/317134_logo_vans.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27267918/l/73173_logo_costco.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27606278/l/33630/33630_logo_slack.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27273458/l/143474_logo_lvmh.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27153793/l/54394_logo_3m.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27153798/l/119147_logo_fedex.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27154090/l/144834/144834_logo_marriott.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/26128621/l/28959_logo_mars.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27273494/l/91491_logo_audi.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27132140/l/28423_logo_the-walt-disney-company.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27305317/l/313166_logo_toyota.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27154022/l/71660/71660_logo_hilton.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/27606183/l/25829/25829_logo_samsung.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/26900515/l/39271_logo_activision.png"))),
            ),
          ]),
          TableRow(children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/26843965/l/61056/61056_logo_pixar-animation-studios.png"))),
            ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.comparably.com/26734584/l/324084/company_logo_324084.png"))),
            ),
          ]),
        ],
      ),
    );
  }
}

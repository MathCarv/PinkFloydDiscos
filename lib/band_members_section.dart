import 'package:flutter/material.dart';

class BandMembersSection extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BandMembersSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: const Column(
        children: [
          Text(
            'Membros da Banda',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BandMemberCircle(
                  image: 'assets/images/david_gilmour.jpg',
                  name: 'David Gilmour',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/syd_barrett.jpg',
                  name: 'Syd Barrett',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/nick_mason.jpg',
                  name: 'Nick Mason',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/roger_waters.jpg',
                  name: 'Roger Waters',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/richard_wright.jpg',
                  name: 'Richard Wright',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/Matheus.jpg',
                  name: 'Matheus Carvalho',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/Igor.jpg',
                  name: 'Igor Villamarim',
                ),
                SizedBox(width: 8),
                BandMemberCircle(
                  image: 'assets/images/Thalita.jpg',
                  name: 'Thalita Fortes',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BandMemberCircle extends StatelessWidget {
  final String image;
  final String name;

  const BandMemberCircle({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 2),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

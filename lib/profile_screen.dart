import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  final Color mainColor = const Color(0xff45645);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // header profile + cover
          Container(
            height: height * 0.35,
            width: width,
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/cover.png"),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 55,
                ),
                //  profile + username
                Column(
                  children: [
                    // profile image

                    Container(
                      height: height * .15,
                      width: height * .15,
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/profile.jpg'))),
                    ),

                    // username
                    const Text(
                      "@Yosr",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 55,
                )
              ],
            ),
          ),

          // statistics (posts/followers...)

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      '133',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'posts',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '12356',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '1535',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                )
                // follow button
                ,
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffFA0365),
                        Color(0xffF6547E),
                        Color(0xffFD331A),
                      ],
                      stops: [0.5, 0.8, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),

          // Photos

          // Freinds

          // posts
        ],
      ),
    );
  }
}

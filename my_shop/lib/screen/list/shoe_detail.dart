import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoeDetail extends StatelessWidget {
  const ShoeDetail(
      {super.key,
      required this.imgAsset,
      required this.shoePrice,
      required this.shoeName});

  final String imgAsset;
  final String shoePrice;
  final String shoeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Detail',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 18.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Shoe',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Hero(
              tag: imgAsset,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imgAsset),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
            shoePrice,
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              shoeName,
              style: const TextStyle(
                fontFamily: 'Varela',
                fontSize: 24,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 52,
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black54,
              ),
              child: Center(
                child: InkWell(
                  onTap: () async {
                    await FlutterLaunch.launchWhatsapp(
                      phone: '6281268269536',
                      message: 'Hi, i would like to order $shoeName',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 32,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Order via Whatsapp',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

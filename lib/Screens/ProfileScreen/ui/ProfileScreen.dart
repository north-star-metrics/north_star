import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF030F33),
      appBar: AppBar(
        backgroundColor: Color(0xFF030F33),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          color: Colors.white,),
          onPressed: () {},
        ),
        title: Text('Profile Settings',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.2,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: screenHeight * 0.45,
                  width: screenWidth * 0.85,
                  decoration: BoxDecoration(
                    color: Color(0xFF303E68),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: (0.0667089156465762 * screenHeight),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Aditya Panda ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                            ),
                          ),
                          Icon(Icons.edit_outlined,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: (0.0389135341271694 * screenHeight),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.person_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(' User Id: adityapanda 122482',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: (0.0222363052155254 * screenHeight),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.email_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(' axxxx@xxxxx.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: (0.0222363052155254 * screenHeight),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.check_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Kyc Verification Status : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: 'processing',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:screenHeight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              color: Color(0xFF16D5FF),
                              width: screenWidth * 0.34,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(double.infinity, 48),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Change Password',
                                  style: TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.34,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                minimumSize: Size(double.infinity, 48),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                elevation: 0, // Remove shadow
                              ).copyWith(
                                side: MaterialStateProperty.all(BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                )),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Suspend Account',
                                style: TextStyle(
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                              if (!states.contains(MaterialState.selected)) {
                                return Colors.white;
                              }
                              return Colors.blue;
                            }),
                          ),
                          Text(
                            'Agree to Terms and Conditions',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -(0.0555907630388135 * screenHeight),
                  left: (MediaQuery.of(context).size.width) / 2 - (0.1944437692924677 * screenWidth),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/user.jpeg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

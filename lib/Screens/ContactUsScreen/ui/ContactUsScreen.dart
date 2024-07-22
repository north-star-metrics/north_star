import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030F33),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Contact Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:30,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text('Our team is here to assist you with any',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text('inquiries',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Text('or support you need.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Icon(Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Head Office',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('7th Floor,Yamuna Building, 86,',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text('Golaghata Rd,',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text('Dakshindari Kolkata',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Icon(Icons.email_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email Us',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('contact@ntsmetrics.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Icon(Icons.phone_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Head Office',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('+91 89810 37010',
                            style: TextStyle(
                              //overflow: TextOverflow.,
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Follow us on Social Media',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.linkedin,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.instagramSquare,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.squareXTwitter,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.facebookSquare,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Send Us a message',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                _buildTextField(label: 'Email',hint: 'adityapanda122482@gmail.com'),
                _buildTextField(label: 'Username',hint: 'adityapanda122482'),
                _buildTextField(hint: 'Select your issues',isDropdown: true),
                _buildTextField(hint: 'Subject'),
                _buildTextField(hint: 'Description...',maxLines: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField({
  String? label,
  String? hint,
  double? height,
  bool isDropdown = false,
  bool isExpanded = false,
  int maxLines = 1,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14.0),
    child: Container(
      height: height,
      child: isDropdown
          ? Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              label: label != null
                  ? Text(
                label,
                style: TextStyle(color: Colors.white),
              )
                  : null,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white70),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15)),
              filled: true,
              fillColor: Colors.transparent,
            ),
            style: TextStyle(color: Colors.white),
            readOnly: true,
          ),
          Positioned(
            right: 15,
            top: 15,
            bottom: 15,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(
                  isExpanded ? Icons.expand_less : Icons.expand_more,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      )
          : TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          label: label != null
              ? Text(
            label,
            style: TextStyle(color: Colors.white),
          )
              : null,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white70),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: Colors.transparent,
        ),
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
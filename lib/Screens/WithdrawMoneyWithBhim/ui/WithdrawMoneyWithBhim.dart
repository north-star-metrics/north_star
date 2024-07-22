import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WithdrawMoneyWithBhim extends StatefulWidget {
  @override
  _WithdrawMoneyWithBhimState createState() => _WithdrawMoneyWithBhimState();
}

class _WithdrawMoneyWithBhimState extends State<WithdrawMoneyWithBhim> {
  bool isMenuExpanded = true;
  bool isModalOpen = true;
  String selectedOption = 'Bank';

  void toggleMenu() {
    setState(() {
      isMenuExpanded = !isMenuExpanded;
    });
  }

  void closeModal() {
    setState(() {
      isModalOpen = false;
    });
  }

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF030F33),
      body:
      Stack(
        children: [
          Row(
            children: [
              // Side Menu
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: isMenuExpanded ? (0.1302083333333333 * screenWidth) : (0.0390625 * screenWidth),
                color: Color(0xFF232F51),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          SizedBox(
                            height: (0.0411206754756291 * screenHeight),
                            width: (0.0390625 * screenWidth),
                            child: Image(image: AssetImage('assets/images/Logo.png')),
                          ),
                          SizedBox(
                            height: (0.0137068918252097 * screenHeight),
                          ),
                          Center(
                            child: Text(
                              'Menu',
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.timer, color: Colors.white),
                            title: isMenuExpanded ? Text('Home', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {
                              print('$screenHeight && $screenWidth');
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.security, color: Colors.white),
                            title: isMenuExpanded ? Text('Security', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.person, color: Colors.white),
                            title: isMenuExpanded ? Text('Profile', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.wallet, color: Colors.white),
                            title: isMenuExpanded ? Text('Wallet', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.money, color: Colors.white),
                            title: isMenuExpanded ? Text('Money', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.exchange, color: Colors.white),
                            title: isMenuExpanded ? Text('Transactions', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          Center(
                            child: Text(
                              'Tools',
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.history, color: Colors.white),
                            title: isMenuExpanded ? Text('History', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.message, color: Colors.white),
                            title: isMenuExpanded ? Text('Messages', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.headset, color: Colors.white),
                            title: isMenuExpanded ? Text('Headset', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.signOut, color: Colors.white),
                            title: isMenuExpanded ? Text('Sign Out', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                          Center(
                            child: Text(
                              'Modes',
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.brightness_6_sharp, color: Colors.white),
                            title: isMenuExpanded ? Text('Mode', style: TextStyle(color: Colors.white)) : null,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Main Content
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: Text('Main Content Area', style: TextStyle(fontSize: 24)),
                    ),
                    if (isModalOpen)
                      Center(
                        child: Container(
                          width: (0.2604166666666667 * screenWidth),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFF232F51),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    'Withdraw Money',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: (0.01171875 * screenWidth),
                                    ),
                                  ),
                                  Spacer(), // Pushes content to the center
                                  IconButton(
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    onPressed: closeModal,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Select withdrawal method:',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                color: Color(0xFF030F33),
                                child: WithdrawalOption(
                                  imagePath: 'assets/images/bank.jpg',
                                  text: 'Withdraw to Bank',
                                  isSelected: selectedOption == 'Bank',
                                  onTap: () => selectOption('Bank'),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                color: Color(0xFF030F33),
                                child: WithdrawalOption(
                                  imagePath: 'assets/images/bhim.png',
                                  text: 'Withdraw to UPI',
                                  isSelected: selectedOption == 'UPI',
                                  onTap: () => selectOption('UPI'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: (0.0520861889357969 * screenHeight),
            left: (0.0260416666666667 * screenWidth),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowsLeftRight),
              color: Colors.white,
              onPressed: toggleMenu,
            ),
          ),
        ],
      ),
    );
  }
}

class WithdrawalOption extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  WithdrawalOption({
    required this.imagePath,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath, width: 24, height: 24),
      title: Text(text, style: TextStyle(color: Colors.white)),
      trailing: isSelected
          ? Icon(Icons.check_circle, color: Colors.blue)
          : null,
      tileColor: isSelected ? Colors.blue.withOpacity(0.5) : Colors.transparent,
      onTap: onTap,
    );
  }
}








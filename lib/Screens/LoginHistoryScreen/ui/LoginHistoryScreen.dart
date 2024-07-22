import 'package:flutter/material.dart';

class LoginData {
  final String macIp;
  final String ipAddress;
  final String userAgent;
  final String time;
  final String location;
  final bool isLoggedIn;

  LoginData({
    required this.macIp,
    required this.ipAddress,
    required this.userAgent,
    required this.time,
    required this.location,
    required this.isLoggedIn,
  });
}

class LoginHistoryScreen extends StatelessWidget {
  final List<LoginData> loginDataList = List.generate(6, (index) {
    bool isLoggedIn = index % 2 == 0;
    return LoginData(
      macIp: '102.394.384.394',
      ipAddress: '112.342.121',
      userAgent: 'User Agent',
      time: '10:34 AM',
      location: 'Location',
      isLoggedIn: isLoggedIn,
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030F33),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Login Data',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF030F33),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Expanded(
              child: ListView.builder(
                itemCount: loginDataList.length,
                itemBuilder: (context, index) {
                  return _buildLoginItem(loginDataList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginItem(LoginData data) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
              color: Color(0xFF02081B),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Mac IP - ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: data.macIp,
                        style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                _buildStatusButton(data.isLoggedIn),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: Color(0xFF04042f),
            ),
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildLoginDetail('IP Address', data.ipAddress),
                _buildLoginDetail('User Agent', data.userAgent),
                _buildLoginDetail('Time', data.time),
                _buildLoginDetail('Location History', data.location),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginDetail(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white70, fontSize: 10),
        ),
        Text(
          value,
          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildStatusButton(bool isLoggedIn) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        maximumSize: Size(100, 30),
        minimumSize: Size(100, 30),
        side: BorderSide(color: isLoggedIn ? Colors.blue : Colors.white),
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isLoggedIn ? Icons.login : Icons.logout,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(width: 4),
          Text(
            isLoggedIn ? 'Logged In' : 'Logged Out',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}





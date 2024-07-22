import 'package:flutter/material.dart';

class BankDetailsScreen extends StatefulWidget {
  @override
  _BankDetailsScreenState createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  bool _isBankInfoExpanded = false;
  bool _isUpiInfoExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030F33),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF303E68),
          ),
          height: MediaQuery.of(context).size.height * 0.96,
          width: MediaQuery.of(context).size.width * 0.92,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Bank Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Bank Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                  _buildDropdown(
                    'Bank Info',
                    Icons.account_balance,
                    _isBankInfoExpanded,
                    _buildBankInfoContent(),
                        () {
                      setState(() {
                        _isBankInfoExpanded = !_isBankInfoExpanded;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('UPI Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                  _buildDropdown(
                    'UPI Info',
                    Icons.payment,
                    _isUpiInfoExpanded,
                    _buildUpiInfoContent(),
                        () {
                      setState(() {
                        _isUpiInfoExpanded = !_isUpiInfoExpanded;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Card Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                          minimumSize: Size(double.infinity, 48),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          elevation: 0,
                        ).copyWith(
                          side: MaterialStateProperty.all(BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          )),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add Card +',
                          style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(
      String title,
      IconData icon,
      bool isExpanded,
      Widget content,
      VoidCallback onTap)

      {
        return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color:  Color(0xFF030F33),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Icon(icon, color: Colors.white),
                SizedBox(width: 16),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Spacer(),
                Container(
                  width: 28,
                  height: 28,
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
              ],
            ),
          ),
        ),
        if (isExpanded) content,
      ],
    );
  }

  Widget _buildBankInfoContent() {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
          color:  Color(0xFF303E68),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.blue)
      ),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField('Account Name : Aditya'),
          _buildTextField('Account Number : 1234567800'),
          _buildTextField('Bank Name : State Bank of India'),
          _buildTextField('Bank IFSC Code : SBIN0005602'),
          _buildTextField('Bank Branch : Pinic Garden'),
          _buildTextField('Bank City : Kolkata'),
        ],
      ),
    );
  }

  Widget _buildUpiInfoContent() {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
          color:  Color(0xFF303E68),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.blue)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField('UPI Adress: Aditya@sbi'),
        ],
      ),
    );
  }

  Widget _buildTextField(
      //String label,
      String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white70),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white54),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Color(0xFF303E68),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  String _gender = 'Male';

  final TextEditingController _dobController = TextEditingController();

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dobController.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0F5),
      appBar: AppBar(
        title: Text(
          'Register Now',
          style:
              TextStyle(color: Color(0xFFaf0909), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFFF0F5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First Name',
                style: TextStyle(
                  color: Color(0xFFaf0909),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              SizedBox(height: 16),
              Text('Last Name',
                  style: TextStyle(
                    color: Color(0xFFaf0909),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              SizedBox(height: 16),
              Text('Phone No',
                  style: TextStyle(
                    color: Color(0xFFaf0909),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              SizedBox(height: 16),
              Text('Email',
                  style: TextStyle(
                    color: Color(0xFFaf0909),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Gender',
                style: TextStyle(
                  color: Color(0xFFaf0909),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Male',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            setState(() {
                              _gender = value!;
                            });
                          },
                        ),
                        Text('Male',
                            style: TextStyle(
                              color: Color(0xFFaf0909),
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Female',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            setState(() {
                              _gender = value!;
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Color(0xFFaf0909),
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Radio<String>(
                          value: 'Other',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            setState(() {
                              _gender = value!;
                            });
                          },
                        ),
                        Text('Other',
                            style: TextStyle(
                                color: Color(0xFFaf0909),
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Date Of Birth',
                style: TextStyle(
                  color: Color(0xFFaf0909),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextField(
                    controller: _dobController,
                    decoration: InputDecoration(
                      hintText: 'DD-MM-YYYY',
                      suffixIcon: Icon(Icons.calendar_today),
                      contentPadding: EdgeInsets.all(8),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;
  String _flower;
  String _food; 
  String _helloAgain;
  String _hellohello;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 20,
      validator: (String value) {
        if(value.isEmpty){
          return 'Name is required';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if(value.isEmpty){
          return 'Email is required';
        }
        if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
          return 'Please enter a valid email address';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if(value.isEmpty){
          return 'Password is required';
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildURL(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'URL'),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if(value.isEmpty){
          return 'URL is required';
        }
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }

  Widget _buildPhoneNumber(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if(value.isEmpty){
          return 'Phone Number is required';
        }
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  Widget _buildCalories(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Calories'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if(value.isEmpty){
          return 'Calories is required';
        }
      },
      onSaved: (String value) {
        _calories = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Demo')),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildName(),
                _buildEmail(),
                _buildPassword(),
                _buildURL(),
                _buildPhoneNumber(),
                _buildCalories(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                    onPressed: () {
                      if(_formKey.currentState.validate()){
                        _formKey.currentState.save();
                        print(_name);
                        print(_email);
                        print(_password);
                        print(_url);
                        print(_phoneNumber);
                        print(_calories);
                      }
                    },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

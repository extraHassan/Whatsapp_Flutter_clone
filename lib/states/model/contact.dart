import 'package:flutter/cupertino.dart';

class Contact{
  final double _phoneNumber;
  final DateTime _creationDate;

  String _contactName; 
  String _profilePicture;

  Contact(this._phoneNumber, this._contactName, this._profilePicture, this._creationDate);

  get getPhoneNumber => _phoneNumber; 
  get getContactName =>_contactName; 
  get getProfilePicture => _profilePicture; 
  get getCreationDate => _creationDate; 

  set updateContactName(String contactName) => this._contactName = contactName; 
  set updateProfilePicture(String profilePicture) => this._profilePicture = profilePicture;
   

}
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  void _navigateToChangeName(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeNameScreen(),
      ),
    );
  }

  void _navigateToChangePassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangePasswordScreen(),
      ),
    );
  }

  // Define more methods for other settings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Change Name'),
            subtitle: Text('Change the name associated with your account.'),
            onTap: () => _navigateToChangeName(context),
          ),
          ListTile(
            title: Text('Change Password'),
            subtitle: Text('Change the password associated with your account.'),
            onTap: () => _navigateToChangePassword(context),
          ),
          // Add more ListTiles for other settings
        ],
      ),
    );
  }
}

class ChangeNameScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  void _handleSubmit(BuildContext context, String newName) {
    // TODO: Update user's name in the database or wherever you are storing user information
    // ...

    // Navigate back to the Settings screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Name'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'New Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                onSaved: (value) => _handleSubmit(context, value!),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangePasswordScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  void _handleSubmit(
      BuildContext context, String? currentPassword, String? newPassword) {
    // TODO: Validate the user's current password and update their password in the database or wherever you are storing user information
    // ...

    // Navigate back to the Settings screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Current Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your current password';
                  }
                  return null;
                },
                onSaved: (value) => _handleSubmit(context, value, null),
                // When the form is saved, call _handleSubmit with the value of the current password entered by the user
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a new password';
                  }
                  return null;
                },
                onSaved: (value) => _handleSubmit(context, null, value),
                // When the form is saved, call _handleSubmit with the value of the new password entered by the user
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save the form if it is valid
                    _formKey.currentState!.save();
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

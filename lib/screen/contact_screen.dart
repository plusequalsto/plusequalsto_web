import 'dart:convert';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:plusequalsto_web/constants/web_colors.dart';
import 'package:plusequalsto_web/main.dart';
import 'package:plusequalsto_web/utils/custom_snackbar_util.dart';
import 'package:plusequalsto_web/widgets/footer.dart';
import 'package:plusequalsto_web/widgets/header.dart';
import 'package:plusequalsto_web/widgets/left_widget.dart';
import 'package:plusequalsto_web/widgets/right_widget.dart';
import 'package:http/http.dart' as http;

class ContactScreen extends StatefulWidget {
  final FluroRouter router;
  const ContactScreen({
    super.key,
    required this.router,
  });

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool _isEmailValid = true;

  void _submitForm() async {
    logger.d('Submit form');
    if (_formKey.currentState!.validate()) {
      final url = Uri.parse('http://localhost:4200/sendemail');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'fullName': _fullNameController.text.trim(),
          'email': _emailController.text.trim(),
          'subject': _subjectController.text.trim(),
          'description': _descriptionController.text.trim(),
        }),
      );
      logger.d(response.body);

      if (response.statusCode == 200) {
        CustomSnackBarUtil.showCustomSnackBar('Email sent successfully',
            success: true);
      } else {
        CustomSnackBarUtil.showCustomSnackBar('Failed to send email',
            success: false);
      }
    } else {
      CustomSnackBarUtil.showCustomSnackBar('Please fill out all fields',
          success: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.06 : 0.1);
    double centerContainerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.8 : 0.8);

    return Scaffold(
      body: Stack(
        children: [
          // Foreground Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left Widget
                    LeftWidget(
                      screenSize: screenSize,
                      containerWidth: containerWidth,
                    ),
                    // Center Container
                    Expanded(
                      child: SizedBox(
                        width: centerContainerWidth,
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior()
                              .copyWith(overscroll: false, scrollbars: false),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Full Name Field
                                  SizedBox(
                                    width: screenSize.width *
                                        0.4, // Set the desired width here
                                    child: TextFormField(
                                      controller: _fullNameController,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: WebColors
                                            .textPrimary, // Set your desired text color here
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        labelText: 'Full Name *',
                                        labelStyle: const TextStyle(
                                          color: WebColors.textPrimary,
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.errorColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Full name is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.01),
                                  // Email Field
                                  SizedBox(
                                    width: screenSize.width *
                                        0.4, // Set the desired width here
                                    child: TextFormField(
                                      controller: _emailController,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: WebColors
                                            .textPrimary, // Set your desired text color here
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        labelText: 'Email *',
                                        labelStyle: const TextStyle(
                                          color: WebColors.textPrimary,
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.errorColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (value) {
                                        setState(() {
                                          _isEmailValid = RegExp(
                                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                              .hasMatch(value);
                                        });
                                      },
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Email is required';
                                        } else if (!_isEmailValid) {
                                          return 'Enter valid Email ID';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.01),
                                  // Email Field
                                  SizedBox(
                                    width: screenSize.width *
                                        0.4, // Set the desired width here
                                    child: TextFormField(
                                      controller: _subjectController,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: WebColors
                                            .textPrimary, // Set your desired text color here
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        labelText: 'Subject *',
                                        labelStyle: const TextStyle(
                                          color: WebColors.textPrimary,
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.errorColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Subject is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.01),
                                  // Project Description Field
                                  SizedBox(
                                    width: screenSize.width *
                                        0.4, // Set the desired width here
                                    child: TextFormField(
                                      controller: _descriptionController,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: WebColors
                                            .textPrimary, // Set your desired text color here
                                      ),
                                      maxLines: 8,
                                      maxLength: 1000,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.borderColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        labelText: 'Description *',
                                        labelStyle: const TextStyle(
                                          color: WebColors.textPrimary,
                                        ),
                                        counterStyle: const TextStyle(
                                          color: WebColors.textPrimary,
                                        ),
                                        alignLabelWithHint: true,
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: WebColors.errorColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Description is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.02),
                                  SizedBox(
                                    width: screenSize.width * 0.4,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        _submitForm();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(64, 52),
                                        foregroundColor: WebColors.textPrimary,
                                        backgroundColor: WebColors.accentColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 16),
                                      ),
                                      child: const Text(
                                        'Submit',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Roboto',
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
                    ),
                    // Right Widget
                    RightWidget(
                      screenSize: screenSize,
                      containerWidth: containerWidth,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(screenSize: screenSize),
          ),
          // Footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Footer(screenSize: screenSize),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../Widgets/DocumentUploadTile.dart';
import '../../Constant/ConstantColor.dart';
import '../../Widgets/CustomTextField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(
              color: Color.fromARGB(255, 8, 8, 8),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black54),
              ),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: buttonColor,
                ),
                tabs: const [
                  Tab(
                    child: Text(
                      "Customer",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Service Provider",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Customer Tab
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Personal Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(label: "Full Name"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Email"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Phone Number"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Password", obscureText: true),
                    SizedBox(height: 12),
                    CustomTextField(
                      label: "Confirm Password",
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Address Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(label: "Province"),
                    SizedBox(height: 12),
                    CustomTextField(label: "City"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Municipality"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Street / Tole"),
                    // Add spacing before the button
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Implement sign up logic for Customer
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: buttonTextColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Service Provider Tab
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Personal Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(label: "Full Name"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Email"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Phone Number"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Password", obscureText: true),
                    SizedBox(height: 12),
                    CustomTextField(
                      label: "Confirm Password",
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Address Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),

                    CustomTextField(label: "Province"),
                    SizedBox(height: 12),
                    CustomTextField(label: "City"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Municipality"),
                    SizedBox(height: 12),
                    CustomTextField(label: "Street / Tole"),
                    SizedBox(height: 20),
                    Text(
                      "Service Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      items: [
                        DropdownMenuItem(
                          value: "Plumber",
                          child: Text("Plumber"),
                        ),
                        DropdownMenuItem(
                          value: "Electrician",
                          child: Text("Electrician"),
                        ),
                        // Add more services as needed
                      ],
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Service Type",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 12),
                    CustomTextField(
                      label: "Experience (Years)",
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 12),
                    CustomTextField(
                      label: "Available Time (Optional)",
                      readOnly: true,
                      onTap: null, // Time picker logic here
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Documents Detail",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(label: "Citizenship Number"),
                    SizedBox(height: 12),
                    DocumentUploadTile(
                      label: "Upload Profile Picture ",
                      onTap: () {},
                    ),
                    SizedBox(height: 12),
                    DocumentUploadTile(
                      label: "Upload License / Certificate",
                      onTap: () {},
                    ),
                    SizedBox(height: 12),
                    DocumentUploadTile(
                      label: "Upload Citizenship (Front Side)",
                      onTap: () {},
                    ),
                    SizedBox(height: 12),
                    DocumentUploadTile(
                      label: "Upload Citizenship (Back Side)",
                      onTap: () {},
                    ),
                    SizedBox(height: 12),
                    // Add spacing before the button
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Implement sign up logic for Service Provider
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: buttonTextColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

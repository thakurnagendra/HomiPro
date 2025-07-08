import 'package:flutter/material.dart';
import '../Constant/ConstantColor.dart';

class DocumentUploadTile extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const DocumentUploadTile({Key? key, required this.label, this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: buttonColor),
          color: buttonColor.withOpacity(0.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(31, 2, 6, 64),
              blurRadius: 4,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.upload_file, color: buttonColor),
            SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                color: buttonColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionsButtons extends StatefulWidget {
  final void Function(int index) onSectionSelected;
  const SectionsButtons({super.key, required this.onSectionSelected});

  @override
  State<SectionsButtons> createState() => _SectionsButtonsState();
}

class _SectionsButtonsState extends State<SectionsButtons> {
  int _selectedSection = 0;

  void _onSectionSelected(int index) {
    setState(() {
      _selectedSection = index;
    });
    widget.onSectionSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => _onSectionSelected(0),
          style: _selectedSection == 0
              ? TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
              : null,
          child: Text(
            "About",
            style: TextStyle(
              color: _selectedSection == 0 ? Colors.black : Colors.white,
              fontSize: 16.0,
              fontFamily: GoogleFonts.workSans().fontFamily,
            ),
          ),
        ),
        TextButton(
          onPressed: () => _onSectionSelected(1),
          style: _selectedSection == 1
              ? TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
              : null,
          child: Text(
            "Projects",
            style: TextStyle(
              color: _selectedSection == 1 ? Colors.black : Colors.white,
              fontSize: 16.0,
              fontFamily: GoogleFonts.workSans().fontFamily,
            ),
          ),
        ),
        TextButton(
          onPressed: () => _onSectionSelected(2),
          style: _selectedSection == 2
              ? TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
              : null,
          child: Text(
            "Uses",
            style: TextStyle(
              color: _selectedSection == 2 ? Colors.black : Colors.white,
              fontSize: 16.0,
              fontFamily: GoogleFonts.workSans().fontFamily,
            ),
          ),
        ),
        TextButton(
          onPressed: () => _onSectionSelected(3),
          style: _selectedSection == 3
              ? TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
              : null,
          child: Text(
            "Blogs",
            style: TextStyle(
              color: _selectedSection == 3 ? Colors.black : Colors.white,
              fontSize: 16.0,
              fontFamily: GoogleFonts.workSans().fontFamily,
            ),
          ),
        ),
        TextButton(
          onPressed: () => _onSectionSelected(4),
          style: _selectedSection == 4
              ? TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
              : null,
          child: Text(
            "Contact",
            style: TextStyle(
              color: _selectedSection == 4 ? Colors.black : Colors.white,
              fontSize: 16.0,
              fontFamily: GoogleFonts.workSans().fontFamily,
            ),
          ),
        ),
      ],
    );
  }
}

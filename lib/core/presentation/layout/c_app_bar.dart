import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAppBar extends StatefulWidget {
  final bool? isUserAuthorized;
  final String? title;
  final Widget? leading;
  final bool? showEditButton;
  final bool? titleCentered;
  final String? trailingText;
  final bool? autoImplyLeading;
  final bool? isElevated;
  final Widget? trailingWidget;
  final VoidCallback? onLeadingPressed;

  @override
  Size get preferredSize => Size.fromHeight(56);

  CAppBar({
    this.isUserAuthorized = true,
    this.title,
    this.autoImplyLeading = true,
    this.leading,
    this.titleCentered = true,
    this.showEditButton = true,
    this.isElevated = false,
    this.trailingWidget,
    this.trailingText,
    this.onLeadingPressed,
  }) : assert(title != null);

  @override
  _CAppBarState createState() => _CAppBarState();
}

class _CAppBarState extends State<CAppBar> {
  bool updated = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: widget.autoImplyLeading!,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        leading: widget.leading ??
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Theme.of(context).primaryColor,
              onPressed: widget.onLeadingPressed ?? Navigator.of(context).pop,
            ),
        centerTitle: widget.titleCentered,
        title: Text(
          widget.title!,
          overflow: widget.showEditButton!
              ? TextOverflow.ellipsis
              : TextOverflow.visible,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        elevation: widget.isElevated! ? 3.0 : 1.0,
        actions: <Widget>[
          if (widget.trailingText != null)
            Container(
              alignment: Alignment.centerRight,
              height: widget.preferredSize.height,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.trailingText!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          if (widget.trailingWidget != null) widget.trailingWidget!,
          if (widget.showEditButton!)
            Container(
              height: 45,
              width: 45,
              padding: EdgeInsets.only(top: 2),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 5,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Color(0XFF7A7A7A),
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            Container()
        ],
      ),
    );
  }
}

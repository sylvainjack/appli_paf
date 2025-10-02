import 'package:appli_paf/Model/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 

class ExpandableBox extends StatefulWidget {
  final String label;
  final bool image;
  final bool arrow;
  final bool isBoxVisible;
  final bool isMenuVisible;
  final Function? onTap;
  final Widget child;

  const ExpandableBox(
      {super.key,
      required this.label,
      required this.image,
      required this.arrow,
      required this.isBoxVisible,
      required this.isMenuVisible,
      this.onTap,
      required this.child});

  @override
  State<ExpandableBox> createState() => _ExpandableBoxState();
}

class _ExpandableBoxState extends State<ExpandableBox> {
  @override
  Widget build(BuildContext context) {
    var uD = Provider.of<DataProvider>(context);
    return Visibility(
      visible: widget.isBoxVisible,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50),
              topRight: Radius.circular(20),
            )),
        width: double.infinity,
        padding: const EdgeInsets.all(35.0),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   border: Border.all(
        //     width: 4.0,
        //     color: Colors.blue[500]!,
        //   ),
        //   borderRadius: BorderRadius.circular(25.0),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.label,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: uD.mediumFont3,
                  ),
                ),
                widget.arrow
                    ? Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: GestureDetector(
                          onTap: widget.onTap as void Function()?,
                          child: Icon(
                            widget.isMenuVisible == false
                                ? Icons.expand_more_rounded
                                : Icons.expand_less_rounded,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            // const Divider(
            //   height: 15.0,
            // ),
            Visibility(visible: widget.isMenuVisible, child: widget.child),
          ],
        ),
      ),
    );
  }
}

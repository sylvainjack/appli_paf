import 'package:appli_paf/Model/data_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:intl/date_symbol_data_local.dart';

class InteractiveCard extends StatefulWidget {
  final String titre1;
  final String? titre2;
  final List? listeTitre;
  final Color? colorTitre1;
  final Color? colorTitre2;
  final Color? colorListeTitre;
  final bool numerotation;
  final Color? backGroundcolorNumerotation;
  final Color? colorNumerotation;
  final Widget? icone2;
  final Widget? icone3;

  final double? fontSizeLignes;
  final String? ligne1;
  final String? ligne2;
  final String? ligne3;
  final String? ligne4;
  final Color? colorLigne1;
  final Color? colorLigne2;
  final Color? colorLigne3;
  final Color? colorLigne4;

  final IcButton? bouton1;
  final IcButton? bouton2;
  final IcButton? bouton3;
  final IcButton? bouton4;
  final IcButton? bouton5;
  final IcButton? bouton6;

  final String? image;
  final String? menuVert;
  final String? menuBleu;
  final String? menuOrange;
  final String? menuRouge;
  final String? menuViolet;
  final String? menuGris;

  final int index;
  final Widget? widgetMenuVert;
  final Widget? widgetMenuBleu;
  final Widget? widgetMenuOrange;
  final Widget? widgetMenuRouge;
  final Widget? widgetMenuViolet;
  final Widget? widgetMenuGris;
  final double? tailleMenuBleu;
  final double? tailleMenuOrange;
  final double? tailleMenuRouge;
  final double? tailleMenuViolet;
  final double? tailleMenuGris;
  final double? tailleMenuVert;

  const InteractiveCard({
    Key? key,
    required this.index,
    required this.titre1,
    this.titre2,
    this.listeTitre,
    this.colorTitre1,
    this.colorTitre2,
    this.colorListeTitre,
    required this.numerotation,
    this.backGroundcolorNumerotation,
    this.colorNumerotation,
    this.icone2,
    this.icone3,
    this.bouton1,
    this.bouton2,
    this.bouton3,
    this.bouton4,
    this.bouton5,
    this.bouton6,
    this.ligne1,
    this.ligne2,
    this.ligne3,
    this.ligne4,
    this.fontSizeLignes,
    this.colorLigne1,
    this.colorLigne2,
    this.colorLigne3,
    this.colorLigne4,
    this.menuVert,
    this.menuBleu,
    this.menuOrange,
    this.menuRouge,
    this.menuViolet,
    this.menuGris,
    this.tailleMenuVert,
    this.tailleMenuBleu,
    this.tailleMenuOrange,
    this.tailleMenuRouge,
    this.tailleMenuViolet,
    this.tailleMenuGris,
    this.widgetMenuVert,
    this.widgetMenuBleu,
    this.widgetMenuOrange,
    this.widgetMenuRouge,
    this.widgetMenuViolet,
    this.widgetMenuGris,
    this.image,
  }) : super(key: key);

  @override
  InteractiveCardState createState() => InteractiveCardState();
}

class InteractiveCardState extends State<InteractiveCard> {
  bool _menuOpen = false;
  bool _menuVertOpen = false;
  bool _menuBleuOpen = false;
  bool _menuOrangeOpen = false;
  bool _menuRougeOpen = false;
  bool _menuVioletOpen = false;
  bool _menuGrisOpen = false;
  @override
  Widget build(BuildContext context) {
    var uD = Provider.of<DataProvider>(context);
    initializeDateFormatting();
    return Container(
      margin: const EdgeInsets.fromLTRB(80, 6, 80, 24),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        border: Border.all(width: 2, color: Colors.black87),
        borderRadius: BorderRadius.circular(25.0),
      ),
      // margin: uD.device == Device.largeTablet
      //     ? const EdgeInsets.fromLTRB(100, 24, 100, 12)
      //     : const EdgeInsets.fromLTRB(24, 5, 24, 12),
      // padding: const EdgeInsets.all(8.0),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(
      //     width: 10,
      //     color: Colors.green[50]!,
      //   ),
      //   borderRadius: BorderRadius.circular(25.0),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            margin: widget.titre2 == null
                ? const EdgeInsets.only(bottom: 8)
                : const EdgeInsets.only(bottom: 2),
            child: Row(
              children: [
                widget.numerotation
                    ? Expanded(
                        flex: widget.index > 99 ? 3 : 2,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                          child: CircleAvatar(
                            backgroundColor:
                                widget.backGroundcolorNumerotation ??
                                Colors.red[900],
                            foregroundColor:
                                widget.colorNumerotation ?? Colors.white,
                            child: Text('${widget.index + 1}'),
                          ),
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: 18,
                  child: Text(
                    widget.titre1,
                    maxLines: 3,
                    style: TextStyle(
                      color: widget.colorTitre1 ?? Colors.blue[900],
                      fontSize: uD.mediumFont3,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                widget.icone3 != null
                    ? Container(
                        margin: const EdgeInsets.only(right: 14),
                        child: widget.icone3!,
                      )
                    : Container(),
                widget.icone2 != null
                    ? Expanded(
                        flex: 3,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: widget.icone2!,
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Icon(
                      _menuOpen == false
                          ? Icons.expand_more
                          : Icons.expand_less,
                      size: 45,
                      color: Colors.red[900],
                    ),
                    onPressed: () {
                      setState(() {
                        if (_menuOpen == false) {
                          _menuOpen = true;
                          _menuOrangeOpen = false;
                          _menuBleuOpen = false;
                          _menuVioletOpen = false;
                          _menuRougeOpen = false;
                          _menuGrisOpen = false;
                        } else {
                          _menuOpen = false;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          widget.titre2 != null
              ? Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    widget.titre2!,
                    maxLines: 3,
                    style: TextStyle(
                      color: widget.colorTitre2 ?? Colors.red[900],
                      fontSize: widget.titre1.length < 20
                          ? uD.mediumFont2
                          : uD.mediumFont,
                    ),
                  ),
                )
              : Container(),
          widget.listeTitre != null
              ? Container(
                  width: double.infinity,
                  height: widget.listeTitre!.length * 15.toDouble() < 50
                      ? widget.listeTitre!.length * 15.toDouble()
                      : 50,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: ListView.builder(
                    itemCount: widget.listeTitre!.length,
                    itemBuilder: (context, index) {
                      return Text(
                        widget.listeTitre![index].toUpperCase(),
                        maxLines: 3,
                        style: TextStyle(
                          color: widget.colorListeTitre,
                          fontSize: 12.0,
                        ),
                      );
                    },
                  ),
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  child: widget.image != null
                      ? Image.asset(widget.image!)
                      : Container(),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    widget.ligne1 != null
                        ? Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.ligne1!,
                              style: TextStyle(
                                color:
                                    widget.colorLigne1 ??
                                    const Color.fromRGBO(0, 0, 0, 0.541),
                                fontSize: widget.fontSizeLignes ?? uD.smallFont,
                                letterSpacing: -0.5,
                              ),
                            ),
                          )
                        : Container(),
                    widget.ligne2 != null
                        ? Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.ligne2!,
                              style: TextStyle(
                                color: widget.colorLigne2 ?? Colors.black54,
                                fontSize: widget.fontSizeLignes ?? uD.smallFont,
                                letterSpacing: -0.5,
                              ),
                            ),
                          )
                        : Container(),
                    widget.ligne3 != null
                        ? Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.ligne3!,
                              style: TextStyle(
                                color: widget.colorLigne3 ?? Colors.black54,
                                fontSize: widget.fontSizeLignes ?? uD.smallFont,
                                letterSpacing: -0.5,
                              ),
                            ),
                          )
                        : Container(),
                    widget.ligne4 != null
                        ? Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.ligne4!,
                              style: TextStyle(
                                color: widget.colorLigne4 ?? Colors.black54,
                                fontSize: widget.fontSizeLignes ?? uD.smallFont,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ],
          ),
          Visibility(
            visible: _menuOpen,
            child: Column(
              children: [
                Divider(height: 30.0, color: Colors.blue[800]),
                Row(
                  children: [
                    widget.bouton1 != null
                        ? Expanded(
                            flex: 15,
                            child: IcButton(
                              label: widget.bouton1!.label,
                              color: widget.bouton1!.color,
                              fontSize: uD.smallFont,
                              onTap: widget.bouton1!.onTap,
                            ),
                          )
                        : Container(),
                    widget.bouton1 != null
                        ? const Expanded(flex: 1, child: SizedBox(width: 1))
                        : Container(),
                    widget.bouton2 != null
                        ? Expanded(
                            flex: 15,
                            child: IcButton(
                              label: widget.bouton2!.label,
                              color: widget.bouton2!.color,
                              fontSize: uD.smallFont,
                              onTap: widget.bouton2!.onTap,
                            ),
                          )
                        : Container(),
                    widget.bouton2 != null
                        ? const Expanded(child: SizedBox(width: 1))
                        : Container(),
                    widget.bouton3 != null
                        ? Expanded(
                            flex: 15,
                            child: IcButton(
                              label: widget.bouton3!.label,
                              color: widget.bouton3!.color,
                              fontSize: uD.smallFont,
                              onTap: widget.bouton3!.onTap,
                            ),
                          )
                        : Container(),
                  ],
                ),
                Row(
                  children: [
                    widget.bouton4 != null
                        ? Expanded(
                            flex: 15,
                            child: IcButton(
                              label: widget.bouton4!.label,
                              color: widget.bouton4!.color,
                              fontSize: uD.smallFont,
                              onTap: widget.bouton4!.onTap,
                            ),
                          )
                        : Container(),
                    widget.bouton5 != null
                        ? const Expanded(child: SizedBox(width: 1))
                        : Container(),
                    widget.bouton5 != null
                        ? Expanded(
                            flex: 15,
                            child: IcButton(
                              label: widget.bouton5!.label,
                              color: widget.bouton5!.color,
                              fontSize: uD.smallFont,
                              onTap: widget.bouton5!.onTap,
                            ),
                          )
                        : Container(),
                    widget.bouton6 != null
                        ? const Expanded(child: SizedBox(width: 1))
                        : Container(),
                    widget.bouton6 != null
                        ? Expanded(
                            flex: 15,
                            child: IcButton(
                              label: widget.bouton6!.label,
                              color: widget.bouton6!.color,
                              fontSize: uD.smallFont,
                              onTap: widget.bouton6!.onTap,
                            ),
                          )
                        : Container(),
                  ],
                ),
                (widget.bouton1 == null &&
                        widget.bouton2 == null &&
                        widget.bouton3 == null &&
                        widget.bouton4 == null &&
                        widget.bouton5 == null &&
                        widget.bouton6 == null)
                    ? Container()
                    : Divider(height: 30.0, color: Colors.blue[800]),
                (widget.menuVert != null && widget.tailleMenuVert != null)
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.green[100]!,
                              Colors.green[50]!,
                              Colors.green[50]!,
                              Colors.green[100]!,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.2, 0.5, 0.8],
                          ),
                          border: Border.all(
                            color: Colors.green[100]!,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.menuVert!,
                                  style: TextStyle(
                                    fontSize: uD.mediumFont2,
                                    color: Colors.red[900],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_menuVertOpen == false) {
                                        _menuVertOpen = true;
                                        _menuBleuOpen = false;
                                        _menuRougeOpen = false;
                                        _menuOrangeOpen = false;
                                        _menuGrisOpen = false;
                                        _menuVioletOpen = false;
                                      } else {
                                        _menuVertOpen = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _menuVertOpen == false
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red[900],
                                ),
                              ],
                            ),
                            Visibility(
                              visible: _menuVertOpen,
                              child: SizedBox(
                                width: double.infinity,
                                height: widget.tailleMenuVert == 0
                                    ? 80
                                    : widget.tailleMenuVert! * 75.toDouble() <
                                          175
                                    ? widget.tailleMenuVert! * 75.toDouble()
                                    : 175,
                                child: widget.widgetMenuVert,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (widget.menuBleu != null && widget.tailleMenuBleu != null)
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue[100]!,
                              Colors.blue[50]!,
                              Colors.blue[50]!,
                              Colors.blue[100]!,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.2, 0.5, 0.8],
                          ),
                          border: Border.all(
                            color: Colors.blue[100]!,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.menuBleu!,
                                  style: TextStyle(
                                    fontSize: uD.mediumFont2,
                                    color: Colors.red[900],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_menuBleuOpen == false) {
                                        _menuVertOpen = false;
                                        _menuBleuOpen = true;
                                        _menuRougeOpen = false;
                                        _menuOrangeOpen = false;
                                        _menuGrisOpen = false;
                                        _menuVioletOpen = false;
                                      } else {
                                        _menuBleuOpen = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _menuBleuOpen == false
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red[900],
                                ),
                              ],
                            ),
                            Visibility(
                              visible: _menuBleuOpen,
                              child: SizedBox(
                                width: double.infinity,
                                height: widget.tailleMenuBleu,
                                child: widget.widgetMenuBleu,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (widget.menuOrange != null && widget.tailleMenuOrange != null)
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange[100]!,
                              Colors.orange[50]!,
                              Colors.orange[50]!,
                              Colors.orange[100]!,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.2, 0.5, 0.8],
                          ),
                          border: Border.all(
                            color: Colors.orange[100]!,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.menuOrange!,
                                  style: TextStyle(
                                    fontSize: uD.mediumFont2,
                                    color: Colors.red[900],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_menuOrangeOpen == false) {
                                        _menuVertOpen = false;
                                        _menuOrangeOpen = true;
                                        _menuBleuOpen = false;
                                        _menuGrisOpen = false;
                                        _menuRougeOpen = false;
                                        _menuVioletOpen = false;
                                      } else {
                                        _menuOrangeOpen = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _menuOrangeOpen == false
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red[900],
                                ),
                              ],
                            ),
                            Visibility(
                              visible: _menuOrangeOpen,
                              child: SizedBox(
                                width: double.infinity,
                                height: widget.tailleMenuOrange == 0
                                    ? 80
                                    : widget.tailleMenuOrange! * 75.toDouble() <
                                          175
                                    ? widget.tailleMenuOrange! * 75.toDouble()
                                    : 175,
                                child: widget.widgetMenuOrange,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (widget.menuRouge != null && widget.tailleMenuRouge != null)
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.red[100]!,
                              Colors.red[50]!,
                              Colors.red[50]!,
                              Colors.red[100]!,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.2, 0.5, 0.8],
                          ),
                          border: Border.all(
                            color: Colors.red[100]!,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.menuRouge!,
                                  style: TextStyle(
                                    fontSize: uD.mediumFont2,
                                    color: Colors.red[900],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_menuRougeOpen == false) {
                                        _menuVertOpen = false;
                                        _menuRougeOpen = true;
                                        _menuBleuOpen = false;
                                        _menuOrangeOpen = false;
                                        _menuGrisOpen = false;
                                        _menuVioletOpen = false;
                                      } else {
                                        _menuRougeOpen = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _menuRougeOpen == false
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red[900],
                                ),
                              ],
                            ),
                            Visibility(
                              visible: _menuRougeOpen,
                              child: SizedBox(
                                width: double.infinity,
                                height: widget.tailleMenuRouge == 0
                                    ? 80
                                    : widget.tailleMenuRouge! * 75.toDouble() <
                                          175
                                    ? widget.tailleMenuRouge! * 75.toDouble()
                                    : 175,
                                child: widget.widgetMenuRouge,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (widget.menuViolet != null && widget.tailleMenuViolet != null)
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple[100]!,
                              Colors.purple[50]!,
                              Colors.purple[50]!,
                              Colors.purple[100]!,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.2, 0.5, 0.8],
                          ),
                          border: Border.all(
                            color: Colors.purple[100]!,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.menuViolet!,
                                  style: TextStyle(
                                    fontSize: uD.mediumFont2,
                                    color: Colors.red[900],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_menuVioletOpen == false) {
                                        _menuVertOpen = false;
                                        _menuVioletOpen = true;
                                        _menuBleuOpen = false;
                                        _menuOrangeOpen = false;
                                        _menuRougeOpen = false;
                                        _menuGrisOpen = false;
                                      } else {
                                        _menuVioletOpen = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _menuVioletOpen == false
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                  ),
                                  iconSize: 30,
                                  color: Colors.orange[900],
                                ),
                              ],
                            ),
                            Visibility(
                              visible: _menuVioletOpen,
                              child: SizedBox(
                                width: double.infinity,
                                height: widget.tailleMenuViolet == 0
                                    ? 80
                                    : widget.tailleMenuViolet! * 75.toDouble() <
                                          175
                                    ? widget.tailleMenuViolet! * 75.toDouble()
                                    : 175,
                                child: widget.widgetMenuViolet,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                (widget.menuGris != null && widget.tailleMenuGris != null)
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black26,
                              Colors.black12,
                              Colors.black12,
                              Colors.black26,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0, 0.2, 0.5, 0.8],
                          ),
                          border: Border.all(color: Colors.black26, width: 1.0),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.menuGris!,
                                  style: TextStyle(
                                    fontSize: uD.mediumFont2,
                                    color: Colors.red[900],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_menuGrisOpen == false) {
                                        _menuVertOpen = false;
                                        _menuGrisOpen = true;
                                        _menuOrangeOpen = false;
                                        _menuRougeOpen = false;
                                        _menuBleuOpen = false;
                                        _menuVioletOpen = false;
                                      } else {
                                        _menuGrisOpen = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    _menuGrisOpen == false
                                        ? Icons.expand_more
                                        : Icons.expand_less,
                                  ),
                                  iconSize: 30,
                                  color: Colors.orange[900],
                                ),
                              ],
                            ),
                            Visibility(
                              visible: _menuGrisOpen,
                              child: SizedBox(
                                width: double.infinity,
                                height: widget.tailleMenuGris == 0
                                    ? 80
                                    : widget.tailleMenuGris! * 75 < 175
                                    ? widget.tailleMenuGris! * 75
                                    : 175,
                                child: widget.widgetMenuGris,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IcButton extends StatelessWidget {
  final String label;
  final Color color;
  final double? fontSize;
  final Function onTap;
  const IcButton({
    Key? key,
    required this.label,
    required this.color,
    this.fontSize,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(20, 35),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      onPressed: onTap as void Function()?,
      child: Text(
        label,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

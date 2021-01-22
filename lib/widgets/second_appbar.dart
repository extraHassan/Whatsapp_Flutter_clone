import 'package:flutter/material.dart';

class SeconderyAppBar extends StatefulWidget {
  final int activeMenu;
  final Function updateCurrentPageIndex;

  const SeconderyAppBar({Key key, this.activeMenu, this.updateCurrentPageIndex}) : super(key: key);

  @override
  _SeconderyAppBarState createState() => _SeconderyAppBarState();
}

class _SeconderyAppBarState extends State<SeconderyAppBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Stack(
          children: <Widget>[
            Container(
              color: Theme.of(context).appBarTheme.color,
              height: constraint.maxHeight,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.camera_alt,
                      color: Color(0xFF128C7E),
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  Expanded(
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        setState(() {
                          widget.updateCurrentPageIndex(0);
                        });
                      },
                      child: Text(
                        'CHATS',
                        style: widget.activeMenu != 0
                            ? TextStyle(color: Color(0xFF128C7E))
                            : TextStyle(color: Colors.white),
                      ),
                      shape: widget.activeMenu != 0
                          ? null
                          : Border(
                              bottom: BorderSide(
                              width: 2,
                              color: Colors.white,
                            )),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        setState(() {
                          widget.updateCurrentPageIndex(1);
                        });
                      },
                      child: Text(
                        'STATUS',
                        style: widget.activeMenu != 1
                            ? TextStyle(color: Color(0xFF128C7E))
                            : TextStyle(color: Colors.white),
                      ),
                      shape: widget.activeMenu != 1
                          ? null
                          : Border(
                              bottom: BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        widget.updateCurrentPageIndex(2);
                      },
                      child: Text(
                        'CALLS',
                        style: widget.activeMenu != 2
                            ? TextStyle(color: Color(0xFF128C7E))
                            : TextStyle(color: Colors.white),
                      ),
                      shape: widget.activeMenu != 2
                          ? null
                          : Border(
                              bottom: BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

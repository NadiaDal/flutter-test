import 'package:flutter/material.dart';

class LikeTile extends StatelessWidget {
  final Icon icon;
  final String text;
  final bool alreadySaved;
  final onTap;

  const LikeTile({
    Key key,
    this.icon,
    this.text,
    this.alreadySaved,
    this.onTap,
  }) : super(key: key);

  Widget _buildRow() {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: this.icon,
        ),
        Expanded(
          child: Text(
            this.text,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          child: InkWell(
            highlightColor: Colors.teal,
            splashColor: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: _buildRow(),
            ),
            onTap: this.onTap,
          ),
        ),
      ),
    );
  }
}

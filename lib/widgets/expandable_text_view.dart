import 'package:flutter/material.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';

class ExpandableTextView extends StatefulWidget {
  const ExpandableTextView({required this.text, super.key, this.maxLines = 3});

  final String text;
  final int maxLines;

  @override
  State<ExpandableTextView> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableTextView> {
  bool _isExpanded = false;
  bool _isTextOverflowing = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _checkTextOverflow();
  }

  void _checkTextOverflow() {
    final span = TextSpan(text: widget.text, style: const TextStyle());
    final tp = TextPainter(
      text: span,
      maxLines: widget.maxLines,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: MediaQuery.of(context).size.width);

    setState(() {
      _isTextOverflowing = tp.didExceedMaxLines;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: _isExpanded ? null : widget.maxLines,
          overflow: TextOverflow.fade,
        ),
        if (_isTextOverflowing)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(_isExpanded ? 'Show Less'.raw : 'Show More'.raw),
              ),
            ],
          ),
      ],
    );
  }
}

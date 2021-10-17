import 'package:flutter/material.dart';

class InboxWidget extends StatelessWidget {
  const InboxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'Inbox',
                style: TextStyle(fontSize: 17, color: colorTheme.primaryColor),
              ),
              Container(
                width: 55,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const Text(
            'Sent',
          ),
          const Text(
            'Draft',
          ),
        ],
      ),
    );
  }
}

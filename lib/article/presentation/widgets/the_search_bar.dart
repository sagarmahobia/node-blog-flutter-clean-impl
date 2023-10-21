import 'package:flutter/cupertino.dart';

class TheSearchBar extends StatelessWidget {
  const TheSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
      // /search

      },

      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CupertinoColors.systemGrey6,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Row(
          children: [
            Icon(
              CupertinoIcons.search,
              color: CupertinoColors.systemGrey,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Search for inspiration',
                style: TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

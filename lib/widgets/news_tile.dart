import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/health.avif'),
        ),
        Text(
          "Lorem Ipsum is simply dummy tet of the printing and"
          " typesetting industry. Lorem Ipsum has been the"
          " industry's standard dummy text ever since the 1500s,"
          " when an unknown printer took a galley",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and"
          " typesetting industry. Lorem Ipsum has been the"
          " industry's standard dummy text ever since the 1500s,"
          " when an unknown printer took a galley",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}

// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

class UpdateSection extends StatelessWidget {
  const UpdateSection({
    super.key,required this.updates,
  });

  final List<String> updates;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Updates',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const Divider(),
              if (updates.isEmpty) const Expanded(
                child: Center(
                  child: Text(
                    'No Updates',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ) else Expanded(
                child: ListView.builder(
                  itemCount: updates.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              updates[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'October 24, 2021',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,),
                          ),
                        ],
                      ),
                      const Padding(
                        padding:
                        EdgeInsets.only(top: 5, bottom: 15),
                        child: Text(
                          'You can now enjoy the new features which is great. You can now enjoy the new features which is great.You can now enjoy the new features which is great.You can now enjoy the new features which is great.You can now enjoy the new features which is great.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

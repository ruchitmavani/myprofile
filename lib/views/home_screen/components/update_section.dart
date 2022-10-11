import 'package:flutter/material.dart';

class UpdateSection extends StatelessWidget {
  const UpdateSection({
    Key? key,
  }) : super(key: key);

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
                "Updates",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              "Global U.S. Stocks Are Now Live!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                          Text(
                            "October 24, 2021",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
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

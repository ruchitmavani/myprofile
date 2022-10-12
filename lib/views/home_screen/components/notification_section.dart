import 'package:flutter/material.dart';
import 'package:myprofilr/views/home_screen/components/red_dot.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key, required this.notifications});

  final List<String> notifications;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const Divider(),
              if (notifications.isEmpty)
                const Expanded(
                  child: Center(
                    child: Text(
                      'No Notifications',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    itemCount: notifications.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const FlutterLogo(),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: notifications[index],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                        children: const [
                                          TextSpan(
                                            text: ' New Article',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: Text(
                                        'Tiger Brokers, Tread Carefully',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      '1 hour ago',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8, child: RedDot()),
                            ],
                          ),
                        ),
                        if (index != notifications.length - 1) const Divider()
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

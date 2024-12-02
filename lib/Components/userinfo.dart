import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo(
      {super.key,
      this.imagee,
      required this.subscription,
      required this.username,
      this.showIcon = false});
  final String? imagee;
  final String username;
  final String subscription;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(255, 47, 41, 41),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            const SizedBox(width: 16),
            CircleAvatar(
              radius: 40,
              backgroundImage: imagee != null ? AssetImage(imagee!) : null,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width /2.1,
                        child: Text(
                          username,
                          maxLines: 1,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Since: $subscription",
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  showIcon ?
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0),
                    child: const Icon(Icons.delete_outline),
                  )
                  : Text("")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

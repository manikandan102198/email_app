import 'package:auto_route/auto_route.dart';
import 'package:email_app/common/widget_constant.dart';
import 'package:email_app/presentation/router_page/router.gr.dart';
import 'package:flutter/material.dart';

class UserEmailWidget extends StatelessWidget {
  const UserEmailWidget({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            decoration: WidgetConstant.kBoxDecoration,
            child: InkWell(
              onTap: () {
                AutoRouter.of(context).push(
                  DetailsScreen(
                    name0: "Manikandan",
                    email: 'maniKandan123@gmail.com',
                    content: content,
                    key: key,
                    title: title,
                  ),
                );
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.circle,
                              size: 7,
                              color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'ManiKandan',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '10:30 Pm',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text(
                          title,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 17.0, color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          content,
                          maxLines: 3,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              fontSize: 15.0, color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.attach_file,
                                    size: 16,
                                  ),
                                  Text(
                                    '2 file Attached',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'maniKandan123@gmail.com',
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.star_outline,
                                  size: 18,
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

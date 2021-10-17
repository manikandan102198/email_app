import 'package:email_app/common/widget_constant.dart';
import 'package:email_app/presentation/widgets/app_bar_widget.dart';
import 'package:email_app/presentation/widgets/inbox_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {Key? key,
      required this.name,
      required this.title,
      required this.email,
      required this.content})
      : super(key: key);

  final String name;
  final String title;
  final String email;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const AppBarWidget(),
          const InboxWidget(),
          const SizedBox(
            height: 40,
          ),
          Container(
              decoration: WidgetConstant.kBoxDecoration,
              margin: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_outlined)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('https://picsum.photos/250?image=9'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            email,
                            style: const TextStyle(
                              fontSize: 13.0,
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
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      content,
                      textAlign: TextAlign.justify,
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Read More',
                        style: TextStyle(fontSize: 18.0, color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    margin: const EdgeInsets.all(5.0),
                    decoration: WidgetConstant.kBoxDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://png.pngtree.com/png-vector/20191118/ourmid/pngtree-folder-icon-creative-design-template-png-image_1998498.jpg',
                          width: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '2 file Attached',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              '5.7 Mb',
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cloud_download_outlined,
                                color: Colors.blue)),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )),
                    ],
                  ),
                ],
              )),
          const Spacer(),
        ],
      )),
    );
  }
}

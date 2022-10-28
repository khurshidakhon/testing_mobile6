import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GreatIdeas extends StatefulWidget {
  const GreatIdeas({super.key});

  @override
  State<GreatIdeas> createState() => _GreatIdeasState();
}

class _GreatIdeasState extends State<GreatIdeas> {
  Set<String> ideas = {};
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Great ideas'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/1.jpg'),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: textEditingController,
              onSubmitted: (String value) {
                setState(() {
                  ideas.add(value);
                  textEditingController.clear();
                });
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.light),
                  labelText: 'Idea',
                  hintText: 'enter new idea',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: ideas.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(ideas.elementAt(index)),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/ideas-detail',
                          arguments: ideas.elementAt(index),
                        );
                      },
                    );
                  })))
        ],
      ),
    );
  }
}

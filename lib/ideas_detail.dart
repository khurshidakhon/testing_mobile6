import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IdeasDetail extends StatelessWidget {
  const IdeasDetail({super.key});

  @override
  Widget build(BuildContext context) {
    String ideaFromPage1 = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(ideaFromPage1),
        actions: [
          GestureDetector(
            child: Icon(Icons.delete),
            onTap: (){
            Navigator.pop(context, ideaFromPage1);

            },
          )
        ],
      ),
      body: Center(
        child: TextField(
          onSubmitted: (value) {
            Navigator.pop(context, value);
          },
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.light),
              labelText: ideaFromPage1,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
      ),
    );
  }
}

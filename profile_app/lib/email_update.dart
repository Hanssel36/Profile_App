import 'package:flutter/material.dart';

class EmailUpdateRoute extends StatelessWidget {
  EmailUpdateRoute({super.key, required this.value});
  final _controller = TextEditingController();
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(value),
        ),
        title: const Text("Email Update"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 30.0, bottom: 10.0),
            child: Text("What's Your Email?", style: TextStyle(fontSize: 25)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 200,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'Email'),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 20),
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(_controller.text),
                child: const Text("Update")),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NameUpdateRoute extends StatelessWidget {
  NameUpdateRoute({super.key, required this.value});
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();
  var value = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(value),
        ),
        title: const Text('Name Update'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 30.0, bottom: 10.0),
            child: Text(
              "What's Your Name?",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 120,
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'First Name'),
                  )),
              SizedBox(
                  width: 120,
                  child: TextField(
                    controller: _controller2,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'Last Name'),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 20),
            child: ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .pop([_controller.text, _controller2.text]),
                child: const Text("Update")),
          )
        ],
      ),
    );
  }
}

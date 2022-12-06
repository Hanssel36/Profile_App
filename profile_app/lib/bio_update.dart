import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BioUpdateRoute extends StatelessWidget {
  BioUpdateRoute({super.key, required this.value});
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
        title: const Text("Bio Update"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 30.0, bottom: 10.0),
            child:
                Text("Tell us about Yourself?", style: TextStyle(fontSize: 25)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 250,
                  child: TextFormField(
                    maxLength: 150,
                    inputFormatters: [LengthLimitingTextInputFormatter(150)],
                    maxLines: 6,
                    keyboardType: TextInputType.name,
                    controller: _controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: "Write a little bit about yourself."),
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

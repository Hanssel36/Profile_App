import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberUpdateRoute extends StatelessWidget {
  PhoneNumberUpdateRoute({super.key, required this.value});
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
        title: const Text("Phone Number Update"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 30.0, bottom: 10.0),
            child: Text("What's Your Number?", style: TextStyle(fontSize: 25)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 170,
                  child: TextFormField(
                    inputFormatters: [LengthLimitingTextInputFormatter(12)],
                    keyboardType: TextInputType.phone,
                    controller: _controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        labelText: 'Phone Number'),
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

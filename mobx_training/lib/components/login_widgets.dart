import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginWidget extends StatelessWidget {
  final TextEditingController controller;
  final String rotulo;
  final String dica;
  final IconData icone;
  final TextInputType tipo;
  final Function(String) onChanged;

  LoginWidget(
      {this.controller,
      this.rotulo,
      this.dica,
      this.icone,
      this.tipo,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.00),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black, width: 2),
          color: Colors.transparent,
        ),
        padding: EdgeInsets.only(left: 8),
        child: TextField(
          style: TextStyle(fontSize: 20.0),
          decoration: InputDecoration(
            icon: Icon(icone) != null ? Icon(icone) : null,
            labelText: rotulo,
            hintText: dica,
            border: InputBorder.none,
          ),
          keyboardType: tipo,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

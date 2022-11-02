import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> fomrValues = {
      'firstName': 'Eric',
      'lastName': 'Louteiro',
      'email': 'elouteiro@google.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del Usuario',
                  formProperty: 'firstName',
                  formValues: fomrValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                    formProperty: 'lastName',
                    formValues: fomrValues,
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario'),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                    formProperty: 'email',
                    formValues: fomrValues,
                    labelText: 'Email',
                    hintText: 'Correo electrónico',
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  formProperty: 'password',
                  formValues: fomrValues,
                  labelText: 'Password',
                  hintText: 'Contraseña',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Supervisor',
                      child: Text('Supervisor'),
                    ),
                    DropdownMenuItem(
                      value: 'DevOps',
                      child: Text('DevOps'),
                    )
                  ],
                  onChanged: (value) {
                    print(value);
                    fomrValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }

                    print(fomrValues);
                  },
                )
              ]),
            ),
          ),
        ));
  }
}

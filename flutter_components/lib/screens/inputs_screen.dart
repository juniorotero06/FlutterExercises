import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "first_name": "Junior",
      "last_name": "Otero",
      "email": "dgrotero697@gmail.com",
      "password": "123456",
      "role": "Admin"
    };

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Input Screen"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  formValues: formValues,
                  formProperty: 'first_name',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Correo",
                  hintText: "Correo Electrónico",
                  inputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: "Contraseña",
                  hintText: "Contraseña",
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  value: "Admin",
                  items: const [
                    DropdownMenuItem(child: Text("Admin"), value: "Admin"),
                    DropdownMenuItem(
                        child: Text("Superuser"), value: "Superuser"),
                    DropdownMenuItem(
                        child: Text("Developer"), value: "Developer"),
                    DropdownMenuItem(
                        child: Text("Jr. Developer"), value: "Jr. Developer"),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues["role"] = value ?? "Admin";
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      //* Esconder el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      //* Validar formulario
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario no valido");
                        return;
                      }

                      //* Imprimir datos del formulario
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("Guardar"),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

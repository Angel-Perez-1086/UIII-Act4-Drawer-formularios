import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_empleado.dart';

class Empleados extends StatefulWidget {
  const Empleados({super.key});

  @override
  State<Empleados> createState() => _EmpleadosState();
}

class _EmpleadosState extends State<Empleados> {
   final _nameController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _scheduleController = TextEditingController();
  final _positionController = TextEditingController();
  final _salaryController = TextEditingController();
  final _phoneController = TextEditingController();
  final _employeeIdController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _birthDateController.dispose();
    _lastNameController.dispose();
    _scheduleController.dispose();
    _positionController.dispose();
    _salaryController.dispose();
    _phoneController.dispose();
    _employeeIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Formulario de Empleados"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _nameController,
              fieldName: "Nombre",
              myIcon: Icons.person,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _lastNameController,
              fieldName: "Apellido",
              myIcon: Icons.person_outline,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _birthDateController,
              fieldName: "Fecha de Nacimiento",
              myIcon: Icons.calendar_today,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _scheduleController,
              fieldName: "Horario",
              myIcon: Icons.schedule,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _positionController,
              fieldName: "Puesto",
              myIcon: Icons.work,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _salaryController,
              fieldName: "Sueldo",
              myIcon: Icons.attach_money,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _phoneController,
              fieldName: "Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _employeeIdController,
              fieldName: "ID Empleado",
              myIcon: Icons.badge,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            submitButton(context),
          ],
        ),
      ),
    );
  }
  OutlinedButton submitButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              name: _nameController.text,
              lastName: _lastNameController.text,
              birthDate: _birthDateController.text,
              schedule: _scheduleController.text,
              position: _positionController.text,
              salary: _salaryController.text,
              phone: _phoneController.text,
              employeeId: _employeeIdController.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    ); 
  }
}
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
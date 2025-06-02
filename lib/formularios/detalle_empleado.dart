import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({
    Key? key,
    required this.name,
    required this.lastName,
    required this.birthDate,
    required this.schedule,
    required this.position,
    required this.salary,
    required this.phone,
    required this.employeeId,
  }) : super(key: key);

  final String name;
  final String lastName;
  final String birthDate;
  final String schedule;
  final String position;
  final String salary;
  final String phone;
  final String employeeId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjeta de Empleado'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nombre completo destacado
                Center(
                  child: Text(
                    '$name $lastName',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                _buildInfoRow(Icons.cake, 'Fecha de Nacimiento', birthDate),
                _buildInfoRow(Icons.schedule, 'Horario', schedule),
                _buildInfoRow(Icons.work, 'Puesto', position),
                _buildInfoRow(Icons.attach_money, 'Sueldo', salary),
                _buildInfoRow(Icons.phone, 'Teléfono', phone),
                _buildInfoRow(Icons.badge, 'ID Empleado', employeeId),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple.shade300),
          const SizedBox(width: 12),
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
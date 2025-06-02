import 'package:flutter/material.dart';

class DetalleCliente extends StatelessWidget {
  DetalleCliente({
    Key? key,
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.direccion,
    required this.correo,
  }) : super(key: key);

  final String idCliente;
  final String nombre;
  final String apellido;
  final String telefono;
  final String direccion;
  final String correo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de Cliente'),
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
                    '$nombre $apellido',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                _buildInfoRow(Icons.badge, 'ID Cliente', idCliente),
                _buildInfoRow(Icons.phone, 'Teléfono', telefono),
                _buildInfoRow(Icons.location_on, 'Dirección', direccion),
                _buildInfoRow(Icons.email, 'Correo Electrónico', correo),
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

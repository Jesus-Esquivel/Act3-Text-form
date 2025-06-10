import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  // Renamed properties to be more descriptive of reservation details
  final String idReserva;
  final String idHuesped;
  final String idHabitacion;
  final String fechaEntrada;
  final String fechaSalida;
  final String totalPago;
  final String estado;

  const Details({
    Key? key,
    required this.idReserva,
    required this.idHuesped,
    required this.idHabitacion,
    required this.fechaEntrada,
    required this.fechaSalida,
    required this.totalPago,
    required this.estado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles de la Reserva"), // Generic title for details screen
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Added padding for consistency
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.confirmation_num_outlined),
              title: Text('ID Reserva: $idReserva'), 
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: Text('ID Huésped: $idHuesped'), 
            ),
            ListTile(
              leading: const Icon(Icons.king_bed_outlined), 
              title: Text('ID Habitación: $idHabitacion'), 
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today_outlined),
              title: Text('Fecha de Entrada: $fechaEntrada'), 
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today), 
              title: Text('Fecha de Salida: $fechaSalida'), 
            ),
            ListTile(
              leading: const Icon(Icons.payments_outlined), 
              title: Text('Total a Pagar: $totalPago'), 
            ),
            ListTile(
              leading: const Icon(Icons.info_outline), 
              title: Text('Estado de la Reserva: $estado'), 
            ),
          ],
        ),
      ),
    );
  }
}

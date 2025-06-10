import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // TextEditingControllers for the form fields
  final _idReservaController = TextEditingController();
  final _idHuespedController = TextEditingController();
  final _idHabitacionController = TextEditingController();
  final _FechadeEntradaController = TextEditingController();
  final _FechadeSalidaController = TextEditingController();
  final _TotalpagoController = TextEditingController();
  final _EstadoController = TextEditingController();

  // Dispose method to release resources when the widget is removed from the widget tree.
  // This prevents memory leaks. It must be called outside of build method.
  @override
  void dispose() {
    _idReservaController.dispose();
    _idHuespedController.dispose();
    _idHabitacionController.dispose();
    _FechadeEntradaController.dispose();
    _FechadeSalidaController.dispose();
    _TotalpagoController.dispose();
    _EstadoController.dispose();
    super.dispose(); // Always call super.dispose() at the end.
  }

  // The build method describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario de Reserva"), // Updated title to match form content
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 23, 179, 226),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Increased padding for better aesthetics
        child: ListView(
          children: [
            TextFormField(
              controller: _idReservaController,
              decoration: const InputDecoration(
                labelText: "ID Reserva", // Updated label
                prefixIcon: Icon(Icons.confirmation_num_outlined), // More relevant icon
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0), // Increased spacing
            TextFormField(
              controller: _idHuespedController,
              decoration: const InputDecoration(
                labelText: "ID Huésped", // Updated label
                prefixIcon: Icon(Icons.person_outline), // More relevant icon
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _idHabitacionController,
              decoration: const InputDecoration(
                labelText: "ID Habitación", // Updated label
                prefixIcon: Icon(Icons.king_bed_outlined), // More relevant icon
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _FechadeEntradaController,
              decoration: const InputDecoration(
                labelText: "Fecha de Entrada", // Updated label
                prefixIcon: Icon(Icons.date_range_outlined), // More relevant icon
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime, // Suggest date input
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _FechadeSalidaController,
              decoration: const InputDecoration(
                labelText: "Fecha de Salida", // Updated label
                prefixIcon: Icon(Icons.date_range), // More relevant icon
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime, // Suggest date input
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _TotalpagoController,
              decoration: const InputDecoration(
                labelText: "Total a Pagar", // Updated label
                prefixIcon: Icon(Icons.payments_outlined), // More relevant icon
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number, // Suggest numeric input
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _EstadoController,
              decoration: const InputDecoration(
                labelText: "Estado de la Reserva", // Updated label
                prefixIcon: Icon(Icons.info_outline), // More relevant icon
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0), // Increased spacing before button
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  foregroundColor: Colors.blueAccent, // Added text color
                  side: const BorderSide(color: Colors.blueAccent)), // Added border color
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Details(
                        idReserva: _idReservaController.text,
                        idHuesped: _idHuespedController.text,
                        idHabitacion: _idHabitacionController.text,
                        fechaEntrada: _FechadeEntradaController.text,
                        fechaSalida: _FechadeSalidaController.text,
                        totalPago: _TotalpagoController.text,
                        estado: _EstadoController.text,
                      );
                    },
                  ),
                );
              },
              child: Text(
                "Enviar formulario".toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

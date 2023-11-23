// import 'package:flutter/material.dart';



// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyForm(),
//     );
//   }
// }

// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }

// class _MyFormState extends State<MyForm> {
//   // Controladores para los campos de entrada
//   TextEditingController _ConceptoController = TextEditingController();
//   DateTime? _selectedFecha;

//   // Función para mostrar el selector de fecha
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );

//     if (pickedDate != null && pickedDate != _selectedFecha) {
//       setState(() {
//         _selectedFecha = pickedDate;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Formulario de Entrada'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Campo de entrada para la fecha
//             InkWell(
//               onTap: () {
//                 _selectDate(context);
//               },
//               child: InputDecorator(
//                 decoration: InputDecoration(
//                   labelText: 'Fecha',
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       _selectedFecha == null
//                           ? 'Seleccione una fecha'
//                           : DateFormat('dd/MM/yyyy').format(_selectedFecha!),
//                     ),
//                     Icon(Icons.calendar_today),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),

//             // Campo de entrada para el texto
//             TextField(
//               controller: _ConceptoController,
//               decoration: InputDecoration(labelText: 'Texto'),
//             ),
//             SizedBox(height: 16.0),

           

//             // Botón para enviar el formulario (puedes agregar la lógica que desees)
//             ElevatedButton(
//               onPressed: () {
//                 // Aquí puedes manejar la lógica de envío del formulario
//                 // Por ejemplo, puedes imprimir los valores en la consola
//                 print('Fecha: $_selectedFecha');
//                 print('Texto: ${_ConceptoController.text}');
//               },
//               child: Text('Enviar'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

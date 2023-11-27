// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:login_session/DB/entities/entities.dart';
// import 'package:login_session/DB/entities/services/service.dart';
// import 'package:login_session/Datos/Usuarios.dart';

// part 'usuario_event.dart';
// part 'usuario_state.dart';

// class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
//   usuarioService usuarioservice = usuarioService();

//   UsuarioBloc() : super(const UsuarioState()) {
//     on<InitUsuario>((event, emit) => 
//     emit(state.copyWith(loading: false, add: false, error: '')));
   
//    //ver usuarios
//     on<getAllusuarios> (((event, emit) async{
//       emit(state.copyWith(loading: true));
      
//       final resp = await usuarioservice.getAllusuarios();
//       emit(state.copyWith(loading: false, listUsuario: resp));
//     })); 

//     //guardar usuario
//     on<saveUsuario>(((event, emit) async{
//       try{
//         emit(state.copyWith(loading: true));
//         await usuarioservice.saveUsuario(event.usuario as usuario);
//         await(state.copyWith(loading: false, add: true));
//        // add(getAllusuarios());
//       }catch(error){
//         try{
//           if(error.toString().contains('Unique index violated.')){
//             emit(state.copyWith(loading: false, error: 'Usuario ya registrado.'));
//           }
//         }catch(e){
//           emit(state.copyWith(loading: false, error: 'Ocurrió un error.'));
//         }
//       }
//     }));
//   }
// }

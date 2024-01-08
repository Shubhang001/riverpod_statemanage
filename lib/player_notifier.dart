import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'player_notifier.g.dart';

@riverpod
 class PlayerNotifier extends _$PlayerNotifier{

final List<Map<String,dynamic>> allPlayers=[
  {"name": "Rohit Sharma",'Country':'India'}
];


  @override
  build(){
    return allPlayers;
  }

  void filterPlayer(String playerName){
    List<Map<String,dynamic>> results=[];
    if(playerName.isEmpty){
      results=allPlayers;
    }
    else{
      results=allPlayers.where((element)=>element['name'].toString().toLowerCase().contains(playerName.toLowerCase())).toList();
    }
    state=results;
  }

}

import 'dart:io';

class Client {
  String? ClientName ;
  int ? ClientNum ;
  void input() {
    stdout.write("Enter your name: ");
    String clientName =stdin.readLineSync()!;
    stdout.write("Enter your number: ");
    ClientNum = int.parse(stdin.readLineSync()!);
    print("Client name: $clientName");
    print("Client number: $ClientNum");
  }
  
}
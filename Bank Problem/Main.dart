import 'dart:io';
import 'Bankaccount.dart';
import 'Client.dart';
void main() {
    Client client = Client();
    client.input();
    print("Account Details \n");
    Bankaccount bankaccount1 = Bankaccount(25000,"Current",73740192,"EGP");
    bankaccount1.deposit(1500);
    Bankaccount bankaccount2 = Bankaccount(1800,"Saving",73740438,"USD");
        bankaccount2.WithDraw(5000);
     print("Account Type : ${bankaccount1.AccountType}");
     print("Account Balance : ${bankaccount1.AccountBalance}");
     print("Currency : ${bankaccount1.currency}");
     print("Account Number: ${bankaccount1.Accountnumber}");
     print("-----------------------------------------------------------------");
     print( "Account Type: ${bankaccount2.AccountType}");
     print("Account Balance: ${bankaccount2.AccountBalance}");
     print("Currency : ${bankaccount2.currency}");
     print("Account Number : ${bankaccount2.Accountnumber}");
}


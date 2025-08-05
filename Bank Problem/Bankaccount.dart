class Bankaccount {
  int? Accountnumber  ;
  String? AccountType;
  int AccountBalance =0;
  String? currency ;
  Bankaccount(this.AccountBalance,this.AccountType,this.Accountnumber,this.currency);
  void deposit (int Cash){
  AccountBalance = (AccountBalance + Cash);
  print(AccountBalance);
  }
 void WithDraw (int Num){
 if (AccountBalance >= Num){
 AccountBalance = (AccountBalance -  Num);
  print(AccountBalance);
  }else{
    print("invalid withdraw");
  }
  }
  
}
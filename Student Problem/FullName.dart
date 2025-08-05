class Fullname {
  String? FirstName ;
  String? MiddleName ;
  String? SurName;
Fullname(this.FirstName,this.MiddleName,this.SurName);
setFirstName ( String val){
  FirstName=val;
}
setMiddletName ( String val){
  MiddleName=val;
}
setSurName ( String val){
  SurName=val;
}
getFirstName(){
  return FirstName ;
}
getMiddleName(){
  return MiddleName ;
}
getSurName(){
  return SurName ;
}
}
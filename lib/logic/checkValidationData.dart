

class CheckValidationData{
String email,pass;

CheckValidationData(this.email, this.pass);
bool Valid()
{
  if(email=='nourhanmahmoud246@gmail.com')
    {
      if(pass=='1234') {
        return true;
      }
    }
  return false;
}
}
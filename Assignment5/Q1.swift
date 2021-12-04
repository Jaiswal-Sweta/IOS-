// Error Handling
enum NumError:Error
{
  case negative
  var message:String{
    switch(self)
    {
      case .negative:return "Error : Number cannot be negative."
    }
  }
}

func ChcekNumber(num:Int) throws
{
  if(num<0)
  {
    throw NumError.negative
  }
  else
  {
    if(num%2==0)
    {
      print("Number is Even.")
    }
    else
    {
      print("Number is Odd.")
    }
  }
}

do
{
  print("Enter Any Number : ",terminator:"")
  let n:Int=Int(readLine() ?? "0")!
  print("Number : \(n)")
  try ChcekNumber(num:n)
}catch
{
  if let err=error as? NumError
  {
    print(err.message)
  }
}

/*OUTPUT
case 1:
Enter Any Number : 7
Number : 7
Number is Odd.

case 2:
Enter Any Number :-9
Number : -9
Error : Number cannot be negative.
*/

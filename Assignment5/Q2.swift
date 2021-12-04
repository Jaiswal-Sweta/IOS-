//Guard
func checkJobEligibility() {
    
  var age = 33

  guard age >= 18, age <= 40 else {
    print("Not Eligible for Job")
    return
  }

  print("You are eligible for this job")

}

checkJobEligibility()

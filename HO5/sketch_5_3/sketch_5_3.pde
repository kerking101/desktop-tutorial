void setup() {


  float gewicht = 85;  
  float lengteCm = 177;  

  float lengteM = lengteCm / 100;
  
  // Bereken de BMI
  float bmi = gewicht / (lengteM * lengteM);
  

  println("Met een gewicht van " + gewicht + " kg en een lengte van " + lengteCm + " cm, is jouw BMI " + round(bmi));
}

void setup() {
  float cijfer1 = 7.5;
  float cijfer2 = 8.3;
  float cijfer3 = 6.9;

  float gemiddelde = (cijfer1 + cijfer2 + cijfer3) / 3;
  float afgerondGemiddelde = round(gemiddelde * 10) / 10.0;

  println("Het gemiddelde is: " + afgerondGemiddelde);
}

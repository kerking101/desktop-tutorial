void setup() {
  int seconden = 31556926; 
  float uren = seconden / 3600.0;
  float dagen = seconden / (3600.0 * 24);
  float jaren = seconden / (3600.0 * 24 * 365);

  println("Seconden: " + seconden);
  println("Uren: " + uren);
  println("Dagen: " + dagen);
  println("Jaren: " + jaren);
}

void setup() {
    tekenVierkant(50, 50, 100, 100);
}

void tekenVierkant(float x, float y, float breedte, float hoogte) {
    line(x, y, x + breedte, y);         // Bovenkant
    line(x + breedte, y, x + breedte, y + hoogte); // Rechterkant
    line(x + breedte, y + hoogte, x, y + hoogte);  // Onderkant
    line(x, y + hoogte, x, y);          // Linkerkant
}

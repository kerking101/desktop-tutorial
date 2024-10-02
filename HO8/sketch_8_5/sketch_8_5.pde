size(200, 200);
background(255, 255, 255);

for (int i = 0; i < 5; i++) {
    int diameter = 10 + i * 20;
    ellipse(100, 100, diameter, diameter);
    println("Diameter: " + diameter);
}

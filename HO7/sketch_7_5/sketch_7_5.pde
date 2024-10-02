int cijfer = 8;
if (cijfer >= 1 && cijfer <= 10) {
    if (cijfer == 1 || cijfer == 2 || cijfer == 3) {
        println("Slecht");
    } else if (cijfer == 4) {
        println("Onvoldoende");
    } else if (cijfer == 5) {
        println("Matig");
    } else if (cijfer == 6 || cijfer == 7) {
        println("Voldoende");
    } else if (cijfer == 8 || cijfer == 9 || cijfer == 10) {
        println("Goed");
    }
} else {
    println("Fout: Ongeldig cijfer ingevoerd. Kies een cijfer tussen 1 en 10.");
}

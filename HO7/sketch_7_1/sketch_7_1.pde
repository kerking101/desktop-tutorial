int leeftijd = 18;

switch(leeftijd) {
    case 1:
        println("Net begonnen aan het leven.");
        break;
    case 2: case 3:
        println("Baby");
        break;
    case 4: case 5:
        println("Kleuter");
        break;
    case 6: case 7: case 8: case 9:
        println("Kind");
        break;
    case 10: case 11: case 12:
        println("Pre-tiener");
        break;
    case 13: case 14: case 15:
        println("Tiener");
        break;
    case 16: case 17: case 18:
        println("Jongvolwassene");
        break;
    default:
        println("Deze leeftijd ken ik niet");
        break;
}

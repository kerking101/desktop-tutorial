void setup() {
    size(400, 400);
    tekenCirkel();
}

void tekenCirkel() {
    for (int i = 1; i <= 5; i++) {
        ellipse(350, 200, i * 20, i * 20);
    }
}

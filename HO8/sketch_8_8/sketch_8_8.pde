int a = 0;
int b = 1;
println(a);
println(b);

for (int i = 0; i < 8; i++) {
    int next = a + b;
    println(next);
    a = b;
    b = next;
}

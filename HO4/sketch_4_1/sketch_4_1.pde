void setup() {
size(300,300);

int a = 2;
int b = 10;
int totaal = 0;

totaal = a + b ;
println(totaal);
totaal = a * b ;
println(totaal);
totaal = a - b ;
println(totaal);

int c = 60;
int d = 100;
int e = 0;

fill(c,d,e);
text("this i have done with letters and not numbers",10,10);

int x1 = 110;
int y1 = 110;
int x2 = 80;
int y2 = 80;

fill(d,e,c);
rect(x1,y1,x2,y2);
}

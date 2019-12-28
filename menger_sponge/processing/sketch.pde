float a = 0;
Box b;

ArrayList<Box> sponge;

void setup() {
 size(800, 800, P3D);
 b = new Box(0, 0, 0, 400);
 sponge = new ArrayList<Box>();
 
 sponge.add(b);
}

void mousePressed() {
   ArrayList<Box> next = new ArrayList<Box>();
   for (Box b: sponge) {
     next.addAll(b.generate());
   }
   sponge = next;
}

void draw() {
 background(51);
 stroke(255);
 noFill();
 noStroke();
 translate(width/2, height/2);
 rotateX(a);
 lights();
 rotateY(a*0.4);
 rotateZ(a*0.5);
 for (Box b : sponge) {
   b.show(); 
 }
 
 a += 0.01;
}

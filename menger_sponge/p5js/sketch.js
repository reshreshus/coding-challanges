let a = 0;

let sponge = []

function setup() {
    createCanvas(800, 800, WEBGL);

    normalMaterial();

    let b = new Box(0,0,0,200);
    sponge.push(b);
}

function mousePressed() {
    let next = [];
    for (let i = 0; i < sponge.length; i++) {
        let b = sponge[i];
        let newBoxes = b.generate();
        next = next.concat(newBoxes);
    }

    sponge = next;
}

function draw() {
    background(51);
    rotateX(a);
    rotateY(a * 0.4);
        rotateZ(a * 0.1);
    let dirX = (mouseX / width - 0.5) * 2;
    let dirY = (mouseY / height - 0.5) * 2;
    directionalLight(250, 250, 250, -dirX, -dirY, -1);

    for (let i = 0; i < sponge.length; i++) {
        sponge[i].show();
    }

    a += 0.01;
}
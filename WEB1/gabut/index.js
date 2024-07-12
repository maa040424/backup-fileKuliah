let x = 200;
let y = 490;
let kecepatanx = 10;
let intix = 200;
let intiy = 490;
let repeat = 0;
let korx = 0;
let kory = 1;
let speedy = 0;
let indexx = false;
let indexy = false;
let totalindex = 0;
let point = 0;
let realarr = false;
let rand = 0;
let poscx = [];
let poscy = [];
let a = 0;
let out = 0;
let ac = 0;
let konfirmasi = 0;
let korcx = false;
let korcy = false;
let indexcx = false;
let indexcy = false;

poscx[2] = 80;
poscx[4] = 160;

let posx = [];
posx[0] = 200;
posx[1] = 40;
posx[3] = 120;
posx[5] = 200;
posx[6] = 240;
posx[7] = 280;
posx[8] = 320;
posx[9] = 360;
posx[10] = 400;

let posy = [];
posy[0] = 40;
posy[1] = 0;
posy[2] = -0;
posy[3] = 0;
posy[4] = 0;
posy[5] = 0;
posy[6] = 0;
posy[7] = 0;
posy[8] = 0;
posy[9] = 0;
posy[10] = 0;

const canv = document.getElementById('cnv');
const c = canv.getContext('2d');

c.fillStyle = 'white';
c.fillRect(0, 0, 400, 550);

function conkiri() {
    if (x < 0) {
        kecepatanx = 0;
    } else {
        kecepatanx = -10;
    }
    x += kecepatanx;
    player();
}

function conkanan() {
    if (x + 30 > 400) {
        kecepatanx = 0;
    } else {
        kecepatanx = 10;
    }
    x += kecepatanx;
    player();
}

function player() {
    window.requestAnimationFrame(player);
    c.clearRect(0, 500, 400, 10);
    c.fillStyle = 'green';
    c.fillRect(x, 500, 10, 10);
    pistol();
}

function tembak() {
    c.clearRect(intix, intiy, 10, 10);
    speedy = 10;
    intix = x;
    intiy = y;
    pistol();
}

function pistol() {
    c.clearRect(0, 0, 400, 550);
    c.fillStyle = 'white';
    c.fillRect(0, 0, 400, 550);
    if (intiy < 0) {
        intix = x;
        intiy = y;
        speedy = 0;
    }
    intiy -= speedy;
    c.fillStyle = 'red';
    c.fillRect(intix, intiy, 10, 10);
    window.requestAnimationFrame(pistol);
}

function getpoint() {
    // Implement your point calculation logic here
}

function speed() {
    window.requestAnimationFrame(speed);

    kory = posy.includes(intiy);
    korx = posx.includes(intix);

    if (korx === true && kory === true) {
        c2.clearRect(intix, intiy, 10, 10);

        indexx = posx.indexOf(intix);
        indexy = posy.indexOf(intiy);

        if (indexx === indexy) {
            point++;
            speedy = 0;
            intiy = 550;
            posy.splice(indexy, 1);
            posx.splice(indexx, 1);
            target();
        } else {
            realarr = posy[indexx] === intiy;
            if (realarr === true) {
                point++;
                speedy = 0;
                intiy = 550;
                posy.splice(indexx, 1);
                posx.splice(indexx, 1);
            }
        }
        c.clearRect(intix, intiy, 10, 10);
    }

    intiy += speedy;
}

speed();

function pistol() {
    window.requestAnimationFrame(pistol);
    c2.clearRect(intix, intiy + 10, 10, 10);
    c2.fillStyle = 'red';
    c2.fillRect(intix, intiy, 10, 10);
}

function getindex() {
    totalindex = posy.length;
}



function target() {
    c.fillStyle = 'gray';

    if (repeat < totalindex) {
        window.requestAnimationFrame(target);
        c.fillRect(posx[repeat], posy[repeat], 9, 9);
        repeat++;
    }
}

function getpoint() {
    window.requestAnimationFrame(getpoint);
    document.getElementById('point').innerHTML = point;
}

function atkcomp() {
    rand = Math.floor(Math.random() * 40);
    out = rand * 10;
    poscx[a] = out;
    poscy[a] = 60;
    gerc();

    if (a > 10) {
        a = 0;
    } else {
        a++;
    }
}

function plus() {
    window.requestAnimationFrame(plus);
    for (let i = 0; i <= 10; i++) {
        poscy[i]++;
    }
}

function gerc() {
    window.requestAnimationFrame(gerc);
    c.fillStyle = 'blue';
    c.fillRect(poscx[ac], poscy[ac], 10, 10);
    c.clearRect(poscx[ac], poscy[ac] - 11, 10, 10);

    if (ac >= 10) {
        ac = 0;
    } else {
        ac++;
    }
}

function kill() {
    window.requestAnimationFrame(kill);
    korcx = poscx.includes(x);
    korcy = poscy.includes(500);

    if (korcx && korcy) {
        indexcx = poscx.indexOf(x);
        indexcy = poscy.indexOf(500);

        if (indexcx === indexcy) {
            konfirmasi = confirm('Yah, kalah! Poin kamu: ' + point + '. Yuk main lagi');
        }
    }

    if (konfirmasi) {
        window.location.href = 'index.html';
    }
}

setInterval(atkcomp, 700);
getindex();
target();
plus();
kill();
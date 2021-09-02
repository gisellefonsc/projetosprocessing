void setup() {
  size(800, 400);
  colorMode(HSB, 360, 100, 100);
}

int random = 0;
String jogador = "";
String computador = ""; 
String resultado = "";


void draw() {

  background(144,22,99);

  fill(144,68,70);
  noStroke();
  rect(80, 120, 80, 40);  //PEDRA
  rect(230, 120, 80, 40); //PAPEL
  rect(370, 120, 80, 40); //TESOURA                 //botões
  rect(510, 120, 80, 40); //LAGARTO
  rect(650, 120, 80, 40); //SPOCK
  rect(200, 250, 120, 50); //JOGADOR
  rect(450, 250, 120, 50); //COMPUTADOR
  
  stroke(255);
  fill(0);
  textSize(15); 
  textAlign(CENTER);
  text("PEDRA", 120, 145);
  text("PAPEL", 270, 145);       //textos dos botões
  text("TESOURA", 410, 145);
  text("LAGARTO", 550, 145);
  text("SPOCK", 690, 145);
  text("JOGADOR", 260, 280);
  text("COMPUTADOR", 510, 280);
  
  if (resultado == "GANHOU") {
    textSize(15);
    fill(0);
    text("VOCÊ GANHOU! :)",400,220);
  } else if (resultado == "PERDEU") {
    text("VOCÊ PERDEU! :(",400,220);
  } else if (resultado == "EMPATE") {
    //rect(350, 50, 50, 50);
    text("VOCÊ EMPATOU AFF :/",400,220);
  }
  text(jogador, 260, 330);
  text(computador, 520, 330);
}

void mousePressed() {

  random = int(random(1, 6));
  if (random == 1) computador = "PEDRA";
  else if (random == 2) computador = "PAPEL";
  else if (random == 3) computador = "TESOURA";
  else  if (random == 4) computador = "LAGARTO";
  else  if (random == 5) computador = "SPOCK";
  else computador = "";

  if (mouseX > 80 && mouseX < 160 && mouseY > 120 && mouseY < 160) {
    jogador = "PEDRA";
  } else if (mouseX > 230 && mouseX < 310 && mouseY > 120 && mouseY < 160) {
    jogador = "PAPEL";
  } else if (mouseX > 370 && mouseX < 450 && mouseY > 120 && mouseY < 160) {
    jogador = "TESOURA";
  } else if (mouseX > 510 && mouseX < 590 && mouseY > 120 && mouseY < 160) {
    jogador = "LAGARTO";
  } else if (mouseX > 650 && mouseX < 730 && mouseY > 120 && mouseY < 160) {
    jogador = "SPOCK";
  } else {
    jogador = "";
    computador = "";
  }

  if (jogador != "" && computador != "") {

    if (jogador == "PEDRA") {
      if (computador == "TESOURA" || computador == "LAGARTO") {
        resultado = "GANHOU";
      } else { 
        resultado = "PERDEU";
      }
    }
    //
    else if (jogador == "PAPEL") {
      if (computador == "PEDRA" || computador == "SPOCK") {
        resultado = "GANHOU";
      } else { 
        resultado = "PERDEU";
      }
    }
    //
    else if (jogador == "TESOURA") {
      if (computador == "PAPEL" || computador == "LAGARTO") {
        resultado = "GANHOU";
      } else { 
        resultado = "PERDEU";
      }
    }
    //
    else if (jogador == "LAGARTO") {
      if (computador == "SPOCK" || computador == "PAPEL") {
        resultado = "GANHOU";
      } else { 
        resultado = "PERDEU";
      }
    }

    //
    else if (jogador == "SPOCK") {
      if (computador == "PEDRA" || computador == "TESOURA") {
        resultado = "GANHOU";
      } else { 
        resultado = "PERDEU";
      }
    }

    if (jogador == computador) {
      resultado = "EMPATE";
    }
  } else resultado = "";

  
  println("ESCOLHA DO JOGADOR: " + jogador);
  println("COMPUTADOR: " + computador);          //console
  if (resultado == "EMPATE") {
    println("RESULTADO: O JOGADOR EMPATOU");
  } else {
    println("RESULTADO: O JOGADOR " + resultado);
  }
  println("------------------------------------");
}
  
  
  

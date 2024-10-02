int[][] board = new int[3][3];
int currentPlayer = 1;

void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  drawBoard();
  if (checkWinner() != 0) {
    println("Speler " + checkWinner() + " wint!");
    noLoop();
  }
}

void mousePressed() {
  int x = mouseX / 100;
  int y = mouseY / 100;
  if (board[y][x] == 0) {
    board[y][x] = currentPlayer;
    currentPlayer = currentPlayer == 1 ? 2 : 1;
  }
}

void drawBoard() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stroke(0);
      noFill();
      rect(j * 100, i * 100, 100, 100);
      if (board[i][j] == 1) {
        line(j * 100 + 10, i * 100 + 10, j * 100 + 90, i * 100 + 90);
        line(j * 100 + 90, i * 100 + 10, j * 100 + 10, i * 100 + 90);
      } else if (board[i][j] == 2) {
        ellipse(j * 100 + 50, i * 100 + 50, 80, 80);
      }
    }
  }
}

int checkWinner() {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != 0) return board[i][0];
    if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != 0) return board[0][i];
  }
  if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != 0) return board[0][0];
  if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != 0) return board[0][2];
  return 0;
}

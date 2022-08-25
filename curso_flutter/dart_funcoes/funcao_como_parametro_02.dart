main() {
  executarPor(10, print, "Muito legal");
}

void executarPor(int qtde, Function(String) fn, String valor) {
  for (int i = 0; i < qtde; i++) {
    fn(valor);
  }
}

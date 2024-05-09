void main() {
  /*
    NIVEL 1, BÁSICO!
    (Variáveis e Tipos, Interpolação, Null-safety e Estruturas de fluxo) 
  */

  //=============================================================================

  // 1 - Introdução a variáveis

  String name = "Vitor";
  int idade = 20;
  bool ehVerdadeiro = true;
  List<String> listaDePalavras = ['Vitor', 'de', 'Ávila', 'Freitas'];

  for (String palavra in listaDePalavras) {
    print(palavra);
  }

  // Interpolação de string
  print(
      'Nome: $name, Idade: $idade, Gosta de jogar vôlei? ${ehVerdadeiro ? 'Sim' : 'Não'}.');

  //=============================================================================

  // 2 - Introdução ao null-safety

  /* 
   ERROR
  String nome;
  print(nome);
  */

  String? nullableVar; // Nullable type. Can be `null` or string.

  String notNullVar; // Non-nullable type. Cannot be `null` but can be string.

  String? nome; // Colocar ? permite a variavel receber null
  print(nome); // null

  String? sobrenome; // ||
  //print(sobrenome!);  Dá erro.
  // Pois a '!' obriga a variável respeitar seu tipo,
  // dessa forma, tentando transformar um null em string.

  late String
      nomeCompleto; /*O 'late' permite que a variável seja null, e que irá receber um valor String tardio, ou seja, depois.
                      E após receber este valor, não poderá mais se tornar null novamente.*/
  nomeCompleto = 'Vitor Freitas';
  print(nomeCompleto);
  //nomeCompleto = null;  <<------ Erro.
  print('\n\n\n');

  //=============================================================================

  // 3 - IF e SWITCH

  bool seguirEmFrente = false;

  if (seguirEmFrente) {
    print('Andar.');
  } else {
    print('Parar.');
  }

  if (10 < 5) {
    print('10 é maior que 5');
  } else {
    print('10 não é menor que 5');
  }

  int valorInt = 4;
  switch (valorInt) {
    case 0:
      print('0');
      break;
    case 1:
      print('1');
      break;
    case 2:
      print('2');
      break;
    default:
      print('Maior que 2.');
  }

  //=============================================================================
}

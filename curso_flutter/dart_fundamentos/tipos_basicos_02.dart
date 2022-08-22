void main() {
  var aprovados = ['Ana', 'Carlos', 'Rafael'];

  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[2]);

  var telefones = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (21) 98765-4321',
    'Pedro': '+55 (85) 98585-7070',
  };

  print(telefones is Map);
  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  var times = {'Corinthians', 'Real Madrid', 'PSG'};
  print(times is Set);
  times.add('Barcelona');
  print(times.length);
  print(times.contains('Corinthians'));
  print(times.first);
  print(times.last);
}

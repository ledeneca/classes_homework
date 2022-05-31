void main(List<String> arguments) {
//1
  Country kg = Country(name: 'Kyrgyzstan', climate: 'Temperate climate');
  Country fr = Country(name: 'France', climate: 'Subtropical climate');
  Country usa = Country(name: 'United States', climate: 'Temperate climate');

  kg.printAll();
  fr.printAll();
  usa.printAll();

//2
  Car lexus = Car(name: 'Lexus LX470', power: 250, color: 'White', price: 15000);
  Car landRover = Car(name: 'Land Rover Discovery 2', power: 136, color: 'Black', price: 6800);

  lexus.carCharacteristics();
  landRover.carCharacteristics();

//3
  List<int> numbers = [0555666777, 0777111999, 0707555333];
  Phone iphone = Phone(number: 0551444555, model: 'Iphone 10', weight: 0.174);
  Phone samsung = Phone(number: 0555923450, model: 'Samsung S10', weight: 0.157);
  Phone xiaomi = Phone(number: 0556000666, model: 'Xiaomi redmi note 9', weight: 0.209);

  iphone.phoneCharacteristics();
  samsung.phoneCharacteristics();
  xiaomi.phoneCharacteristics();

  iphone.receiveCall(name: 'Анастасия', number: 0551108069);
  samsung.receiveCall(name: 'Анастасия', number: 0554543434);
  xiaomi.receiveCall(name: 'Анастасия', number: 0555643349);

  print(iphone.sendMessage(numbers: numbers));
  print(samsung.sendMessage(numbers: numbers));
  print(xiaomi.sendMessage(numbers: numbers));

//4
  Reader reader1 = Reader(
      fio: 'Одинец А.А.',
      number: 1,
      faculty: 'ГП',
      dob: '19.05.01',
      phoneNumber: 0551108069);
  Reader reader2 = Reader(
      fio: 'Кондратко О.Е.',
      number: 2,
      faculty: 'ГФС',
      dob: '11.02.00',
      phoneNumber: 0555955020);
  Reader reader3 = Reader(
      fio: 'Одинец В.А.',
      number: 3,
      faculty: 'АРХ',
      dob: '29.12.98',
      phoneNumber: 0557388854);

  Book book1 = Book(name: 'Искусство любить', author: 'Эрих Фромм');
  Book book2 = Book(name: 'Книжный вор', author: 'Маркус Зусак');
  Book book3 = Book(name: 'Осень патриарха', author: 'Габриэль Гарсиа Маркес');

  reader1.takeBook(countBook: 3);
  reader2.takeBook(countBook: 1);
  reader3.takeBook(countBook: 2);

  reader1.takeBookName(bookName: ['Приключения', 'Словарь', 'Энциклопедия']);
  reader2.takeBookName(bookName: ['Приключения', 'Словарь', 'Энциклопедия']);
  reader3.takeBookName(bookName: ['Приключения', 'Словарь', 'Энциклопедия']);

  reader1.takeBookClassName(book: [book1]);
  reader1.takeBookClassName(book: [book1, book2]);
  reader1.takeBookClassName(book: [book1, book2, book3]);

  reader1.returnBook(countBook: 2);
  reader2.returnBook(countBook: 0);
  reader3.returnBook(countBook: 1);

  reader1.returnBookName(bookName: ['Приключения', 'Словарь']);
  reader2.returnBookName(bookName: ['Приключения', 'Словарь']);
  reader3.returnBookName(bookName: ['Приключения', 'Словарь']);

  reader1.returnBookClassName(book: []);
  reader2.returnBookClassName(book: [book1]);
  reader3.returnBookClassName(book: [book1, book2]);
}

//1
class Country {
  String name;
  String climate;

  Country({required this.name, required this.climate});

  void printAll() {
    print('Название страны: $name, климат: $climate.');
  }
}

//2
class Car {
  String name;
  int power;
  String color;
  int price;

  Car(
      {required this.name,
      required this.power,
      required this.color,
      required this.price});

  void carCharacteristics() {
    print('Название: $name, Мощность: $power, Цвет: $color, Цена: $price.');
  }
}

//3
class Phone {
  int number;
  String model;
  double weight;

  Phone({required this.number, required this.model, required this.weight});

  void phoneCharacteristics() {
    print('$number $model $weight');
  }

  void receiveCall({required String name, required int number}) {
    print('Звонит $name, $number');
  }

  List sendMessage({required List<int> numbers}) {
    return numbers;
  }
}

//4
class Reader {
  String fio;
  int number;
  String faculty;
  String dob;
  int phoneNumber;

  Reader(
      {required this.fio,
      required this.number,
      required this.faculty,
      required this.dob,
      required this.phoneNumber});

  void takeBook({required int countBook}) {
    print('$fio взял $countBook книги.');
  }

  void takeBookName({required List bookName}) {
    print('$fio взял книги : $bookName.');
  }

  void takeBookClassName({required List<Book> book}) {
    print('$fio вернул книги: $book,');
  }

  void returnBook({required int countBook}) {
    print('$fio вернул $countBook книги.');
  }

  void returnBookName({required List bookName}) {
    print('$fio вернул книги: $bookName.');
  }

  void returnBookClassName({required List<Book> book}) {
    print('$fio вернул книги: $book,');
  }
}

class Book {
  String name;
  String author;

  Book({required this.name, required this.author});

  @override
  String toString() {
    return '$author: $name';
  }
}

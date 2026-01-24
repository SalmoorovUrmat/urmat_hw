import 'book.dart';

class Library {
String name;
List<Book> _books;

Library(this.name, this._books) ;


void addBook(Book b){
  _books.add(b);

}
void showBooks(){
  print('Library: $name');
  print( 'Book List:');

  for (int i = 0; i < _books.length; i++){
    print ('${i+1}.${_books}');
  }
}


}
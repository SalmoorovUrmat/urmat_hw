import 'book.dart';
import 'library.dart';

void main()
{

Book myBook = Book("Harry Potter", "J.K. Rowling");
Book frendsBook = Book.withRating("Harry Potter", "J.K. Rowling", 8.5);
print("$myBook");
frendsBook.displayInfo();


Book b1 = Book('Sherlock Holmes', 'Arthur Conan Doyle');
Book b2 = Book.withRating('Mysterious island', 'Jules Verne', 10.0);
Book b3 = Book.withRating('Around the World in 80 days', 'Jules Vern', 100.0);
b3.rating = 9.9;


b1.displayInfo();
b2.displayInfo();
b3.displayInfo();

// Library cityLib = Library('City Library');

//cityLib.showBooks();
}
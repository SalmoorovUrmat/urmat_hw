class Book {
String? _title;
String? _author; 
double? _rating ;


Book (this._title, this._author);

Book.withRating(this._title, this._author, this._rating);

set rating (double value) {
    if (value <0 || value >10) {
      print("Selest from 0 to 10!");
    } _rating = value;
  }



get title{
  return _title;
}

get author{
  return _author;
}



get rating {
  return _rating;
}
  
void displayInfo(){
  print ( '$_title');
  print('$_author');
  print('$_rating');
}


}
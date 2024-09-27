

class Book {
  // Static property to keep track of the total number of books created
  static int totalBooks = 0;


  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;


  Book(this.title, this.author, this.publicationYear) {

    totalBooks++;
  }


  void read(int pages) {
    pagesRead += pages;
  }


  int getPagesRead() {
    return pagesRead;
  }


  String getTitle() {
    return title;
  }


  String getAuthor() {
    return author;
  }


  int getPublicationYear() {
    return publicationYear;
  }


  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {

  Book book1 = Book('1984', 'George Orwell', 1949);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);


  book1.read(100);
  book2.read(50);
  book3.read(120);


  List<Book> books = [book1, book2, book3];


  for (Book book in books) {
    print('Title: ${book.getTitle()}');
    print('Author: ${book.getAuthor()}');
    print('Publication Year: ${book.getPublicationYear()}');
    print('Pages Read: ${book.getPagesRead()}');
    print('Book Age: ${book.getBookAge()} years\n');
  }


  print('Total Books Created: ${Book.totalBooks}');
}

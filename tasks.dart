class Book:
    def _init_(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def display_info(self):
        print(f"Title: {self.title}")
        print(f"Author: {self.author}")
        print(f"Pages: {self.pages}")

# Example usage:
book = Book("1984", "George Orwell", 328)
book.display_info()


//////////////////////////////
class Book:
    def _init_(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def display_info(self):
        print(f"Title: {self.title}")
        print(f"Author: {self.author}")
        print(f"Pages: {self.pages}")

# Example usage:
book = Book("1984", "George Orwell", 328)
book.display_info()
////////////////






class Novel extends Book {
  String genre;

  Novel(String title, String author, int publicationYear, this.genre)
      : super(title, author, publicationYear);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

void main() {
  var myNovel = Novel('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Drama');
  myNovel.displayInfo();
}


abstract class Shape {
  double area();
}
class Circle extends Shape {
  double radius;

  Circle(this.radius);


  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);
  @override
  double area() {
    return width * height;
  }
}

void printArea(Shape shape) {
  print(: ${shape.area()}");
}

void main() {
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);
  printArea(circle);     
  printArea(rectangle);   
}


//////////////
[23:37, 07/07/2024] Genga: abstract class Serializable {
  String toJson();
}
class User implements Serializable {
  String name;
  int age;
  
  User(this.name, this.age);
  
  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}
class Product implements Serializable {
  String productName;
  double price;
  
  Product(this.productName, this.price);
  
  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price}';
  }
}
void main() {
  User user = User("Alice", 30);
  Product product = Product("Laptop", 999.99);
  
  print(user.toJson());  // Output: {"name": "Alice", "age": 30}
  print(product.toJson());  // Output: {"productName": "Laptop", "price": 999.99}
}
[23:37, 07/07/2024] Genga: 


///
void main() 
  try {
    var account = BankAccount(100.0);
    account.deposit(50.0);
    print('Balance after deposit: ${account.balance}');
    account.withdraw(200.0);
  } catch (e) 
    print(e);
  }
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      throw InvalidAmountException('Amount to deposit should be more than zero.');
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw InvalidAmountException('Amount to withdraw should be more than zero.');
    }
    if (amount > balance) {
      throw InsufficientFundsException('Insufficient funds to withdraw $amount.');
    }
    balance -= amount;
  }
}
class InvalidAmountException implements Exception {
  final String message;
  InvalidAmountException(this.message);

  @override
  String toString() {
    return 'InvalidAmountException: $message';
  }
}
class InsufficientFundsException implements Exception {
  final String message;
  InsufficientFundsException(this.message);

  @override
  String toString() {
    return 'InsufficientFundsException: $message';
  }
}
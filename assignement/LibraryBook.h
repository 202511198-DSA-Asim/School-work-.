#ifndef LIBRARYBOOK_H
#define LIBRARYBOOK_H
#include <iostream>
using namespace std;

class LibraryBook{
private:
    int id, days;
    string title, author, borrower;
    bool borrowed;
public:
    LibraryBook();
    LibraryBook(int,string,string);
    ~LibraryBook();

    int getId();
    string getTitle();
    int getDays();
    bool isBorrowed();

    void borrowBook(string,int);
    void returnBook();
    void display();
};
#endif

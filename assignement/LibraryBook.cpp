#include "LibraryBook.h"

LibraryBook::LibraryBook(){id=0;days=0;borrowed=false;}
LibraryBook::LibraryBook(int i,string t,string a){
    id=i; title=t; author=a;
    days=0; borrowed=false;
}
LibraryBook::~LibraryBook(){
    cout<<"Book Object Destroyed\n";
}

int LibraryBook::getId(){return id;}
string LibraryBook::getTitle(){return title;}
int LibraryBook::getDays(){return days;}
bool LibraryBook::isBorrowed(){return borrowed;}

void LibraryBook::borrowBook(string b,int d){
    borrower=b; days=d; borrowed=true;
}
void LibraryBook::returnBook(){borrowed=false;}
void LibraryBook::display(){
    cout<<id<<" "<<title<<" "<<author<<" ";
    cout<<(borrowed?"Borrowed":"Available")<<endl;
}

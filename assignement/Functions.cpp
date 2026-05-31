#include "Functions.h"

void addBook(LibraryBook b[],int &n){
    int id; string t,a;
    cout<<"ID Title Author: ";
    cin>>id>>t>>a;
    b[n++]=LibraryBook(id,t,a);
}

void displayBooks(LibraryBook b[],int n){
    for(int i=0;i<n;i++) b[i].display();
}

void searchBook(LibraryBook b[],int n){
    int id; cin>>id;
    for(int i=0;i<n;i++)
        if(b[i].getId()==id) b[i].display();
}

void borrowBookMenu(LibraryBook b[],int n){
    int id,d; string name;
    cin>>id>>name>>d;
    for(int i=0;i<n;i++)
        if(b[i].getId()==id)
            b[i].borrowBook(name,d);
}

void returnBookMenu(LibraryBook b[],int n){
    int id; cin>>id;
    for(int i=0;i<n;i++)
        if(b[i].getId()==id)
            b[i].returnBook();
}

void displayOverdueBooks(LibraryBook b[],int n){
    for(int i=0;i<n;i++)
        if(b[i].getDays()>7)
            b[i].display();
}

void calculateTotalFines(LibraryBook b[],int n){
    int fine=0;
    for(int i=0;i<n;i++)
        if(b[i].getDays()>7)
            fine+=(b[i].getDays()-7)*100;
    cout<<"Total Fine = "<<fine<<endl;
}

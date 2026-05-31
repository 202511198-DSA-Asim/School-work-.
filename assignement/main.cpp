#include "Functions.h"

int main(){
    LibraryBook books[100];
    int n=0,ch;

    do{
        cout<<"\n1.Add\n2.Display\n3.Borrow\n4.Return\n";
        cout<<"5.Search\n6.Overdue\n7.Fines\n8.Exit\n";
        cin>>ch;

        switch(ch){
        case 1:addBook(books,n);break;
        case 2:displayBooks(books,n);break;
        case 3:borrowBookMenu(books,n);break;
        case 4:returnBookMenu(books,n);break;
        case 5:searchBook(books,n);break;
        case 6:displayOverdueBooks(books,n);break;
        case 7:calculateTotalFines(books,n);break;
        }
    }while(ch!=8);

    return 0;
}

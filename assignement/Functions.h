#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "LibraryBook.h"

void addBook(LibraryBook[],int&);
void displayBooks(LibraryBook[],int);
void searchBook(LibraryBook[],int);
void borrowBookMenu(LibraryBook[],int);
void returnBookMenu(LibraryBook[],int);
void displayOverdueBooks(LibraryBook[],int);
void calculateTotalFines(LibraryBook[],int);

#endif

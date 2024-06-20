// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Library
{
    struct Book
    {
        string title;
        string author;
        uint256 publicationYear;
    }

    Book[] public ListofBooks;
    mapping (string=>Book) public Fetch;

    function addBook(string memory _title,string memory _author,uint256 _publicationYear) public
    {
        Book memory newBook = Book(_title, _author,_publicationYear);
        ListofBooks.push(newBook);  
        Fetch[_title] = newBook;
    }

    function getBook(string memory _title) public view returns (string memory,string memory,uint256)
    {
        Book memory book = Fetch[_title];
        return (book.title,book.author,book.publicationYear);
    }
}
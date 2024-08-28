function Book(title, author, pages, read) {
  this.title = title;
  this.author = author;
  this.pages = pages;
  this.read = false;
  this.info = function () {
    console.log(this.title, this.author, this.pages, this.read)
  };
}

const theHobbit = new Book('The Hobbit', 'J. R. R. Tolkien', '295', 'No');

console.log(theHobbit.info());

// add book to library
// remove book from library
// show library
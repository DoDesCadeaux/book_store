from django.shortcuts import render, get_object_or_404
from .models import Book
from django.db.models import Avg


# Create your views here.
def index(request):
    books = Book.objects.all()
    n_books = books.count()
    avg_rating = books.aggregate(Avg("rating")) 
    # avg_rating is a dict with values aggregate can be accessed by using :
    # average_rating.rating__avg (2 underscores)
    # if aggregate has another parameter (ie : aggregate(Avg("rating"), Min("rating")) )
    # then min can be accessed like this : average_rating.rating__min
    
    return render(request, "book_outlet/index.html", {
        "books": books,
        "n_books": n_books,
        "average_rating": avg_rating
    })

def book_info(request, slug):
    #pk = id -> Get the book with the Database ID so each URI is looking for the book id.
    #pk stands for primary key. We can use id=id as well
    
    # We instead do a slug so we can make the uri more readable with the slugified book title
    book = get_object_or_404(Book, slug=slug)
    return render(request, "book_outlet/book_info.html", {
        'title' : book.title,
        'author' : book.autor,
        'is_best_selling': book.is_best_selling,
        'rating' : book.rating
        })

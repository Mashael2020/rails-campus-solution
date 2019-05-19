Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "/books", to: "books#index", as: "books" # books_path = /books 
    get '/books/new', to: "books#new", as: "new_book" # new_book_path = /books/new
    get '/books/:id/edit', to: "books#edit", as: "edit_book" # edit_book_path(@book)
    get "/books/:id", to: "books#show", as: "book" # book_path(book) = /books/:id
    delete '/books/:id', to: "books#destroy"
    post '/books', to: "books#create"
    patch '/books/:id', to: "books#update"
    
    get '/authors', to: 'authors#index', as: 'authors'
end

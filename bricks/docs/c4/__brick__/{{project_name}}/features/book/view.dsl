dynamic mobile {
    title "Book"

    user -> mobileBookPage 
    mobileBookPage -> bookController 
    bookController -> database

    autolayout lr
}

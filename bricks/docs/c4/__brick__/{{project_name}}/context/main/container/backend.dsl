backend = container "Backend" {
    description "Backend services for the application."
    technology "Golang Raiden"
    
    bookController = component "BookController" {
        description "Controller for book related operations."
    }
}

database = container "Database" {
    description "Stores all data for the application."
    technology "PostgreSQL"

    bookTable = component "books" {
        description "Stores book data."
    }
}

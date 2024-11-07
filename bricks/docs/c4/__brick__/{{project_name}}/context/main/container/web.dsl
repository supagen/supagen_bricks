web = container "Web App" {
    description "The web app for the {{project_name.sentenceCase()}} project."
    technology "NextJS"

    webBookPage = component "Book Page" {
        description "Book page for the web app."
    }
}

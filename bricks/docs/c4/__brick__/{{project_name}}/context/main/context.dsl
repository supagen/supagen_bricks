mainSystem = softwareSystem "{{project_name.sentenceCase()}} System" {
    description "{{project_description}}"

    // Mobile Application container
    !include container/mobile.dsl
    
    // Web Application container
    !include container/web.dsl
    
    // Backend container
    !include container/backend.dsl
    
    // Database container
    !include container/database.dsl
}

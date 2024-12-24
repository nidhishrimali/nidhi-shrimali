provider "github" {
  token = "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"
}

# Create a public GitHub repository
resource "github_repository" "public_repo" {
  name        = "nidhi-shrimali"                    
  visibility  = "public"                               
  has_issues  = true                                   
  has_wiki    = true                                   
  has_projects = false                                 
  auto_init   = true                                   
}


resource "github_repository_file" "readme" {
  repository = github_repository.public_repo.name      
  file       = "README.md"                            
  content    = "My name is nidhi shrimali\n\nThis is my public repository."
  branch     = "main"                                  
}

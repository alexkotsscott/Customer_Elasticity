
install_load_packages <- function(packs){
  
  # Args:    A list of packages example = ('tidyr', 'data.table')
  # Returns: installs (if not already on your system), and loads a list of packages given
  # Useage:  packs <- c('tidyr', 'data.table')
  #          install_load_packages(packs)
  
  new.packs <- packs[!(packs %in% installed.packages()[, "Package"])]
  if (length(new.packs)) 
    install.packages(new.packs, dependencies = TRUE)
  sapply(packs, library, character.only = TRUE)
}

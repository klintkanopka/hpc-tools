setwd('~/')

# download the files from an internet connected computer

tgt_pkg <- 'LMest'
deps <- gtools::getDependencies(tgt_pkg)
download.packages(c(tgt_pkg, deps), destdir = 'pkgs', type = 'win.binary')

# install packages from a folder on the not internet connected computer

pkg_paths <- paste0('pkgs/', list.files('pkgs'))
install.packages(pkg_paths, repos = NULL)

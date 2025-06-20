# a code snippet for how pull commandline args into your R script

tmp <- commandArgs(trailingOnly = TRUE)

plot_type <- tmp[1]
plot_number <- tmp[2]

out_file <- paste0('fig/plot_', plot_type, '_', plot_number, '.png')

print(out_file)

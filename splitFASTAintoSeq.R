library(Biostrings)
args <- commandArgs(trailingOnly = TRUE)

# Read the input FASTA file
input_file <- args[1]
sequences <- readDNAStringSet(input_file)

# Create a directory to store the split FASTA files (if it doesn't already exist)
output_directory <- "split_fasta"
dir.create(output_directory, showWarnings = FALSE)

# Loop through each sequence in the input and write it to a new FASTA file
for (i in 1:length(sequences)) {
  sequence_name <- names(sequences)[i]
  sequence <- as.character(sequences[i])  # Convert to character
  
  # Write the sequence to a new FASTA file
  output_file <- file.path(output_directory, paste0(sequence_name, ".fasta"))
  writeLines(c(paste0(">", sequence_name), sequence), con = output_file)
  
  cat("Processed:", sequence_name, "\n")
}

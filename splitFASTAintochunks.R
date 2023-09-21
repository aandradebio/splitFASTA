library(Biostrings)
library(data.table)

args <- commandArgs(trailingOnly = TRUE)

# Read the multifasta file
fasta_file <- args[1]
chunk_size <- as.integer(args[2])  # Convert to integer

# Read DNA sequences
dna_sequences <- readDNAStringSet(fasta_file)

# Calculate the number of chunks
num_chunks <- ceiling(length(dna_sequences) / chunk_size)

# Split DNA sequences into chunks
sequence_chunks <- split(dna_sequences, rep(1:num_chunks, each = chunk_size, length.out = length(dna_sequences)))

# Define an output directory (change this to your desired directory)
output_directory <- "output_chunks"

# Create the output directory if it doesn't exist
if (!dir.exists(output_directory)) {
  dir.create(output_directory)
}

# Write each sequence chunk to a separate FASTA file
for (i in 1:num_chunks) {
  chunk <- sequence_chunks[[i]]
  output_file <- file.path(output_directory, paste0("splitted_fasta_chunk", i, ".fasta"))
  writeXStringSet(chunk, output_file, format = "fasta")
  cat("Processed: Chunk", i, "\n")
}

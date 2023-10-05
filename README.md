# splitFASTA
Simple code to split a multifasta file using R 

## Prerequisites
Before using this script, ensure you have the following prerequisites installed:

- R (https://www.r-project.org/)
- R library: Biostrings

You can install the required R libraries using the following commands:

```R
install.packages("Biostrings")
```

## splitFASTAintochunks.R

This script is designed to split a FASTA file containing DNA sequences into smaller chunks. It takes two command-line arguments: the path to the input FASTA file and the desired chunk size. The DNA sequences in the input file are divided into chunks, and each chunk is saved as a separate FASTA file in an output directory.

### Usage
```
Rscript splitFASTAintochunks.R input.fasta chunk_size
```
input.fasta: The path to the input FASTA file containing DNA sequences.
chunk_size: The desired size for each sequence chunk.

## splitFASTAintoseq.R

This script is designed to split a FASTA file containing DNA sequences into individual sequences. It takes one command-line argument: the path to the input FASTA file. The DNA sequences in the input file are split into individual sequences, and each sequence is saved as a separate FASTA file in an output directory.

### Usage 
```
Rscript splitFASTAintoseq.R input.fasta
```

input.fasta: The path to the input FASTA file containing DNA sequences.
Please note that you may need to customize the output directory in both scripts to specify where the resulting files should be saved.

## Author
Amanda Araújo Serrão de Andrade
aandradebio@gmail.com

Feel free to contact me, open an issue, or a pull request.

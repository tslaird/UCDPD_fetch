# UCDPD_fetch

This repository contains scripts which automate the fetching and conversion of incident logs from the UC Davis police department website


The first script "`fetch_logs.sh`" takes as input a start and end date and fetches all logs contained in those dates as long as they exist in the log system.

The second snakemake file then converts all the logfiles (which are "`.pdf`") to textfiles ("`.txt`") using the `pdftotext` program.

From there you can either aggregate the pdf files (using the `cat` command) to more easily search the data compiled in one file. While not done with the scripts here, you can parse the "`.txt`" files and combine them into an aggregated "`.tsv`" file which would allow more robust analysis than cursory searches of the aggregated "`.pdf`" file.


 

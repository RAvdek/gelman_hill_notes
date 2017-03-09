for f in $(echo ./*.Rmd)
do
R --no-save <<EOF
    library(rmarkdown)
    render("${f}", output_format="md_document")
EOF
done

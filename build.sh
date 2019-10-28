# asciidoctor-pdf
mkdir -p dist/zalgo
cp -r src/zalgo/images dist/zalgo
asciidoctor-pdf \
  -r asciidoctor-pdf-cjk-kai_gen_gothic \
  -a pdf-style=theme.yml \
  -o dist/index.adoc.pdf \
  src/index.adoc
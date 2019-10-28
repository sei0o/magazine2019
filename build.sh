# asciidoctor-pdf
mkdir -p dist/zalgo
mkdir -p dist/sack
cp -r src/zalgo/images dist/zalgo
cp -r src/sack/fig.jpg dist/sack
asciidoctor-pdf \
  -r asciidoctor-pdf-cjk-kai_gen_gothic \
  -r asciidoctor-diagram \
  -a pdf-style=theme.yml \
  -o dist/index.adoc.pdf \
  src/index.adoc
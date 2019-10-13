# see: https://qiita.com/machu/items/4a133e83f58f82459e56

require 'asciidoctor'
require 'rake/clean'
require 'rake/testtask'

OUTDIR = "dist"
SOURCE = "src/index.adoc"
CLEAN.include(OUTDIR)

# task :html do
#   # public/index.htmlを生成
#   sh "asciidoctor -d book -o #{OUTDIR}/index.html -n #{SOURCE}"
#   sh "cp -rp drafts/images #{OUTDIR}"
# end

task :pdf do
  sh "asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=theme.yml #{SOURCE} -o ./#{OUTDIR}/rbbook.pdf"
end

# task :gentoc do
#   # toc.adocを生成
#   sh "grep -E '^={1,3}\s' all.adoc | sed -e 's/=/*/g' > toc.adoc"
# end

task :default => [:pdf]
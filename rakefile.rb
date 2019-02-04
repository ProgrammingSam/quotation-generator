require 'rubygems'
require 'rake/clean'
require 'yaml'
require 'erb'

CLEAN.include(['*.tex', '*.synctex.gz', '*.pdf', '*.log', '*.aux'])
CLOBBER.include(['*.tex', '*.synctex.gz', '*.pdf', '*.log', '*.aux'])

CONFIG = YAML.load_file('config.yaml')

rule '.tex', [:client] do |t, args|
  CLIENT = args[:client]
  template = ERB.new(File.new("#{t.name}.template").read)
  File.open(t.name, 'w+') { |f| f.write(template.result) }
end

rule '.pdf', [:client] => '.tex' do |t|
  sh "pdflatex #{t.source}"
  # WARNING: Using TiKZ, document will require two compilations of the document
  # because the position on the page is first written to the .aux file and then
  # read back in the second run
  sh "pdflatex #{t.source}"
end

desc("Generate 'invoice' for a client")
task :invoice, [:client] => ['invoice.pdf']

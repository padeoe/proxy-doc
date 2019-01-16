FROM asciidoctor/docker-asciidoctor
RUN gem install rdoc --no-document
RUN gem install pygments.rb
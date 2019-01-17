FROM asciidoctor/docker-asciidoctor
RUN gem install rdoc --no-document
RUN gem install pygments.rb

WORKDIR /documents
ADD proxy.adoc .

CMD ["asciidoctor", "proxy.adoc", "-o", "index.html"]
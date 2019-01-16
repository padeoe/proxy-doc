```bash
docker build -t asciidoc-dev -f ./dev/Dockerfile .
docker run -d \
    --name=asciidoc-dev \
    -p 7781:22 \
    --restart=always \
    -v "$PWD/documents":/documents \
    asciidoc-dev
```
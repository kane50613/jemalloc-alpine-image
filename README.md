# jemalloc-alpine-image

📦 Serving pre-built jemalloc binary here, so you don't need to compile every time.

## Usage

```Dockerfile
# Use pre-built jemalloc binary
FROM gary50613/jemalloc-alpine:latest as jemalloc

# With your runner image, ex: node:alpine
FROM node:alpine

# Copy the pre-built binary
COPY --from=jemalloc /usr/local/lib/libjemalloc.so.2 /usr/local/lib/

# Tell nodejs to use jemalloc (optional)
ENV LD_PRELOAD=/usr/local/lib/libjemalloc.so.2
```

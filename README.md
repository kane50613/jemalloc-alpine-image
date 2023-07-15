# jemalloc-alpine-image

## Usage

```Dockerfile
# Use pre-built jemalloc binary
FROM ghcr.io/gary50613/jemalloc-alpine:latest as jemalloc

# With your runner image, ex: node:alpine
FROM [runner]

# Copy the pre-built binary
COPY --from=jemalloc /usr/local/lib/libjemalloc.so.2 /usr/local/lib/

# Tell nodejs to use jemalloc (optional)
ENV LD_PRELOAD=/usr/local/lib/libjemalloc.so.2
```
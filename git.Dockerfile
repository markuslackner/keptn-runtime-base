FROM alpine:3.15
# required for external tools to detect this as a go binary
ENV GOTRACEBACK=all
ENV GIN_MODE=release

RUN apk add --no-cache ca-certificates libc6-compat git

RUN adduser -D nonroot -u 65532
USER nonroot

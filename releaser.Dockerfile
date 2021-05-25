FROM alpine:3.11
RUN apk add -U --no-cache ca-certificates

COPY reelbet /

ENTRYPOINT ["/reelbet"]
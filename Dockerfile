FROM alpine:latest
RUN apk add --no-cache bash coreutils make git

COPY . /app
WORKDIR /app

# Command to run tests
CMD ["make"]

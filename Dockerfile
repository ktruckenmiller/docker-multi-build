FROM alpine as file-builder
RUN mkdir /code && touch /code/boston.txt

FROM alpine as dist-1
RUN mkdir /build
RUN mkdir /thisthing
RUN apk update && apk add curl
COPY --from=file-builder /code/boston.txt /build/boston.txt

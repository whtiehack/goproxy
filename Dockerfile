FROM goproxy/goproxy:latest AS build

FROM alpine:latest
COPY --from=build /goproxy /goproxy 
EXPOSE 8081
ENTRYPOINT ["/goproxy"]
CMD []

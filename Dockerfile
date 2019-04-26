FROM goproxy/goproxy:latest AS build

FROM alpine:latest
COPY --from=build /goproxy /goproxy 
CMD /goproxy

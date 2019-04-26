FROM gomods/athens:latest

ENV GO_ENV=production
EXPOSE 3000/tcp
CMD ["athens-proxy" "-config_file=/config/config.toml"]
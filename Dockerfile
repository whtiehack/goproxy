FROM gomods/athens:v0.2.0
ENV GO_ENV=production
EXPOSE 3000/tcp
CMD ["athens-proxy", "-config_file=/config/config.toml"]
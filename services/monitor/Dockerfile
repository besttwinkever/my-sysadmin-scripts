FROM ubuntu:22.04
WORKDIR /app
RUN mkdir -p /app/data
COPY script.sh .
RUN chmod +x ./script.sh
CMD ["./script.sh"]

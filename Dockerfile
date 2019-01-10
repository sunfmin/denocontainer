FROM alpine
RUN apk add libgcc gcompat && \
    cd /root && \
    wget https://github.com/denoland/deno/releases/download/v0.2.6/deno_linux_x64.gz && \
    gunzip deno_linux_x64.gz && \
    mv deno_linux_x64 /bin/deno && \
    chmod +x /bin/deno
CMD [ "/bin/deno" ]

FROM rust AS builder
WORKDIR /src
COPY . .
RUN cargo build --release

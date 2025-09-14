# Pakai official Elixir image (alpine biar ringan)
FROM elixir:1.17-alpine

# Install deps dasar untuk compile Elixir & Phoenix
RUN apk add --no-cache build-base git inotify-tools

# Set working directory
WORKDIR /app

# Install hex & rebar (package manager Elixir)
RUN mix local.hex --force && mix local.rebar --force

# Copy mix files dan install deps Elixir
COPY mix.exs mix.lock ./
RUN mix deps.get

# Copy seluruh source code
COPY . .

# Expose port Phoenix
EXPOSE 4000

# Application authors
LABEL auhtors="Ariya Panna, Astria Febrian Anggraini, Bryan Adiputra Onggo"

# Jalankan Phoenix server
CMD ["mix", "phx.server"]

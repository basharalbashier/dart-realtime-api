FROM google/dart

WORKDIR /app
COPY . .

RUN dart pub get

RUN dart compile exe bin/main.dart -o bin/main

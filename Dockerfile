FROM dart:2.19.0 AS build
WORKDIR /app
COPY . .
RUN dart pub get 
RUN dart compile exe bin/main.dart -o bin/main 
FROM node:18 AS runtime
RUN npm install peer -g
RUN peerjs --port 9000 --key peerjs --path /call
ENV runmode=development
ENV serverid=default
ENV logging=normal
ENV role=monolith
COPY --from=build /runtime/etc /etc
COPY --from=build /runtime/lib /lib
COPY --from=build /runtime/lib64 /lib64
COPY --from=build /runtime/usr /usr
COPY --from=build /app/bin/main /app/bin/main
COPY --from=build /app/config/ config/
COPY --from=build /app/generated/ generated/
COPY --from=build /app/web/ web/
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
EXPOSE 9000
CMD app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role
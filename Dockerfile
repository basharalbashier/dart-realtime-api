FROM dart:2.19.0 AS build
WORKDIR /app
COPY . .
FROM debian:buster-slim AS runtime
ENV runmode=development
ENV serverid=default
ENV logging=normal
ENV role=monolith
COPY --from=build /runtime/etc /etc
COPY --from=build /runtime/lib /lib
COPY --from=build /runtime/lib64 /lib64
COPY --from=build /runtime/usr /usr
COPY ./bin/main /app/bin/main
COPY --from=build /app/config/ config/
COPY --from=build /app/generated/ generated/
COPY --from=build /app/web/ web/
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
CMD app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role
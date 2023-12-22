FROM dart:latest AS build
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
COPY ./config/ config/
COPY ./generated/ generated/
COPY ./web/ web/
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
CMD app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role
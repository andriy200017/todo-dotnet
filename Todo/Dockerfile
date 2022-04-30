FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

COPY ["./Todo.csproj", "Todo/"]

RUN dotnet restore "Todo/Todo.csproj"
COPY . "./Todo"
WORKDIR "/src/Todo"
RUN dotnet build "Todo.csproj" -c Debug -o /app/build

FROM build AS publish
RUN dotnet publish "Todo.csproj" -c Debug -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

ADD entrypoint.sh /

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

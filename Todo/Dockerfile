FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

COPY ["./Todo.csproj", "Todo/"]

RUN dotnet restore "Todo/Todo.csproj"
COPY . "./Todo"
WORKDIR "/src/Todo"
RUN dotnet build "Todo.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Todo.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

CMD ["dotnet", "Todo.dll"]

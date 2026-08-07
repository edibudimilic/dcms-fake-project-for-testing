FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY app.csproj ./
RUN dotnet restore
COPY Program.cs ./
RUN dotnet publish -c Release -o /out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /out ./
ENV ASPNETCORE_URLS=http://0.0.0.0:3000
EXPOSE 3000
ENTRYPOINT ["dotnet", "app.dll"]

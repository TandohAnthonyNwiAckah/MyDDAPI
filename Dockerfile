# Get Base Image (Full .NET Core SDK)
FROM mcr.microsoft.com/dotnet/core/sdk:2.2.105 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
# Copy everything else and build
COPY . ./
RUN dotnet restore
COPY . .
RUN dotnet publish -c Release -o /app

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app
EXPOSE 80
COPY --from=build-env /app .
ENTRYPOINT ["dotnet", "MyDDAPI.dll"]



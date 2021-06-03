FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env
WORKDIR /app

COPY . .
RUN dotnet restore Csecho.sln 
RUN dotnet publish Csecho.sln -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
EXPOSE 80
WORKDIR /app
COPY --from=build-env /app/out .
CMD ["./Csecho.Web"]

# Base image
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

# Copy source code and build
COPY . .

# Set environment variables
ENV ASPNETCORE_URLS=http://+:80
ENV REDIS_HOST=https://redis-cn8u7.ondigitalocean.app
ENV REDIS_PORT=6379
ENV REDIS_PASSWORD=welcome01

# Run the application
ENTRYPOINT ["dotnet", "YourApp.dll"]

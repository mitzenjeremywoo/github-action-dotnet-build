# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app
COPY release /app

RUN ls -al -R 
# Optional: expose port (depends on your app, usually 80 for web)
EXPOSE 80

# Run the app
ENTRYPOINT ["dotnet", "github-action-dotnet-build.dll"]

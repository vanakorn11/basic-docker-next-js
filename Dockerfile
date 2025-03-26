# Pick image
FROM node:23

# Set work directory or unset
WORKDIR /app

# Copy source into directory
COPY ./ /app

# Install dependencies
RUN npm i
# Build prod
RUN npm run build

# Expose port (next default start is 3000) if change please set other
EXPOSE 3000

# Command run container
ENTRYPOINT ["npm", "run", "start"]

# Use the Node.js base image
FROM node:20

# Copy the package.json and package-lock.json files
COPY package*.json ${LAMBDA_TASK_ROOT}

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler (entry point)
CMD ["index.handler"]

FROM node:20-alpine

WORKDIR /app

# Install deps layer (cached unless package.json changes)
COPY package*.json ./
RUN npm ci

# Source is mounted as a volume in dev — no COPY src here
EXPOSE 3000

CMD ["npm", "run", "dev"]

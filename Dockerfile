FROM node:22-alpine

WORKDIR /out/app

COPY package.json pnpm-lock.yml ./ 

RUN pnpm install

COPY src/ ./src

EXPOSE 3000

CMD ["pnpm", "start"]

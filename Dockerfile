# syntax=docker/dockerfile:1

FROM r-base

COPY . .

CMD ["Rscript", "main.R"]

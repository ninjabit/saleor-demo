FROM mirumee/saleor:latest

COPY wsgi/ /app/saleor/wsgi/
RUN mv /app/templates/base.html /app/templates/base_original.html
RUN mv /app/templates/dashboard/base.html /app/templates/dashboard/base_original.html
COPY templates/ /app/templates/

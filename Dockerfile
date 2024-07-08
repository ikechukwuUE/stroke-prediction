FROM rocker/r-ver:latest

# Install necessary R packages
RUN R -e 'install.packages(c("plumber", "randomForest"))' # Replace with your model's dependencies

# Copy model and scoring script
COPY model/model.rds /app/
COPY plumber.R /app/

WORKDIR /app

EXPOSE  8000

ENTRYPOINT ["R", "-e", "pr <- plumber::plumb('plumber.R'); pr$run(host='0.0.0.0', port=8000)"]

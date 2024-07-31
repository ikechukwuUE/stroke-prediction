library(plumber)
library(tidymodels)
library(ranger)

# Load your trained model
model_path <- "C:/Users/ugboi/OneDrive/Desktop/ikechukwu.ue/analytics/google_advanced/projects/stroke_prediction/model/model.rds"
model <- readRDS(model_path)

#* @apiTitle Stroke Prediction API

#* Predict stroke risk
#* @param age:int
#* @param avg_glucose_level:double
#* @param bmi:double
#* @param hypertension:int
#* @param heart_disease:int
#* @param gender:string
#* @param ever_married:string
#* @param work_type:string
#* @param smoking_status:string
#* @param Residence_type:string
#* @post /predict
function(age, avg_glucose_level, bmi, hypertension, heart_disease, gender, ever_married, work_type, smoking_status, Residence_type) {
  new_data <- tibble(
    age = as.numeric(age),
    avg_glucose_level = as.numeric(avg_glucose_level),
    bmi = as.numeric(bmi),
    hypertension = as.factor(hypertension),
    heart_disease = as.factor(heart_disease),
    gender = as.factor(gender),
    ever_married = as.factor(ever_married),
    work_type = as.factor(work_type),
    smoking_status = as.factor(smoking_status),
    Residence_type = as.factor(Residence_type)
  )
  # Predict using the workflow model
  prediction <- predict(model, new_data, type = "prob")$.pred_1
  return(list(prediction = prediction))
}

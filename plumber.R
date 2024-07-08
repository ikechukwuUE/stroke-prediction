# plumber.R

#* @apiTitle Stroke Prediction API
#* @apiDescription An API for predicting stroke outcomes.

#* Predict using the model
#* @param input_data The input data for prediction
#* @post /predict
function(req, res) {
  # Extract input_data from the request
  input_data <- req$postBody
  # Call the prediction function
  prediction <- predict_fn(input_data)
  # Return the prediction
  list(prediction = prediction)
}

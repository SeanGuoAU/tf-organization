############################################ AWS Organization Hierarchies
root_layer_id = "r-1w1p"
## project layer here <<---
layer_2_name   = "Infrastructure"
layer_3_1_name = "Pre-Prod"
layer_3_2_name = "Prod"
############################################
email_prefix = ["prepro", "pro"]
email_suffix = "@seanguostudio.click"
############################################ All project aliases
project = [] #Please fill in the project according to this format ["a", "b", "c"], and only one project can be added at a time.
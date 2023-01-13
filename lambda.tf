module "profile_generator_lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "4.7.2"
  # insert the 28 required variables here
  function_name = "profile-generator-lambda"
  description   = "Generates a new profiles"
  handler       = "index.handler"
  runtime       = "nodejs16.x"
  source_path   = "${path.module}"
  layers        = [module.profile_generator_lambda_layer.lambda_layer_arn]

  tags = {
    Name = "profile-generator-lambda"
  }
}


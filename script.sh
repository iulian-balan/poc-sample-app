aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/t6y6o8s3

docker push public.ecr.aws/t6y6o8s3/sample-app:0.0.3
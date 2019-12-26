aws ec2 create-key-pair --key-name test --region ${AWS_REGION} | jq -r '.KeyMaterial' > test.pem

import boto3
import requests
import sys

# grab comd args 
# imageurl, bucketname, exp (in order)

url = sys.argv[1]        
bucket = sys.argv[2]     
exp = int(sys.argv[3])  #num

# grab file name
filename = url.split("/")[-1]

# download file
response = requests.get(url)
with open(filename, 'wb') as file:
    file.write(response.content)

# Upload to S3
s3 = boto3.client("s3", region_name="us-east-1")
s3.upload_file(Filename=filename, Bucket=bucket, Key=filename)

# Generate presigned URL
url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': filename},
    ExpiresIn=exp
)

print("Presigned URL:", url)
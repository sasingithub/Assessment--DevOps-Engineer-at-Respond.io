these commands will call in nodjsvpc.yml under UserData: !Base64 |
        #!/bin/bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install -i /usr/local/aws-cli -b /usr/local/bin
mkdir -p ~/application/storage/logs/
echo 'sudo aws s3 cp ~/application/storage/logs s3://ssingh-s3-bucket --recursive --exclude "*" --include "*.log"' >> ~/s3copy.sh
echo '0 12 * * * sh s3copy.sh' >> ~/s3copyscript.cron

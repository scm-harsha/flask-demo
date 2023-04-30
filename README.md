# flask-demo

## scripts to run inside ubuntu before deployment

```shell
sudo apt-get update
sudo apt install -y pip ruby-full wget
git clone https://github.com/scm-harsha/flask-demo.git
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x install
sudo ./install auto
sudo service codedeploy-agent status
```

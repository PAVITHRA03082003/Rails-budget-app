# Rails-budget-app
Rails Budget App is a simple personal finance manager built with Ruby on Rails and PostgreSQL. It allows users to create categories, add expense records, and track budgets. The app is fully Dockerized for easy setup and deployment.

** What I Did**
**Launch an EC2 instance on AWS (Ubuntu)**

Choose Ubuntu 22.04 LTS AMI

Open port 3000 in the security group (for Rails)

SSH into the instance:

bash
Copy
Edit
ssh -i <your-key.pem> ubuntu@<your-ec2-public-ip>
**Clone the sample Rails budget app repo**

bash
Copy
Edit
git clone https://github.com/example-user/rails-budget-app.git
cd rails-budget-app
git checkout app
**Install Docker & Docker Compose**

bash
Copy
Edit
sudo apt update
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker ubuntu
newgrp docker
** Running the App**
Build Docker images

bash
Copy
Edit
docker-compose build
**Setup the database**

bash
Copy
Edit
docker-compose run web rails db:create db:migrate
**Run the app**

bash
Copy
Edit
docker-compose up
**Access the app**

Open in browser:

cpp
Copy
Edit
http://<your-ec2-public-ip>:3000
** Notes**
Uses PostgreSQL as the database

entrypoint.sh handles container startup

Docker setup includes:

Dockerfile

docker-compose.yml

config/database.yml

**Add Sample Category in Rails Console**
bash
Copy
Edit
docker-compose run web rails console

user = User.first
Category.create!(name: "Groceries", user_id: user.id)


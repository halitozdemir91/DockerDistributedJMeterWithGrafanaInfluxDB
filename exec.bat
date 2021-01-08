

cd base
docker build -t jmeter-base .
cd ..
docker-compose build & docker-compose up -d
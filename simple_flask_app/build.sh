# First way (pwd -> simple_flask_app)
docker build -f .\docker\dev\Dockerfile -t simple_app_server:0.0.1 . 
docker run -p 5000:5000 simple_app_server:0.0.1

# Second way (pwd -> simple_flask_app/simple_flask_app)
docker-compose build ({{name_of_container:version}} )
docker run -p 5000:5000 {{name_of_container:version}}

#HEROKU
heroku login
heroku container:login 

docker tag simple_flask_app_server registry.heroku.com/gpp-simple-flask-app/web
docker push registry.heroku.com/gpp-simple-flask-app/web

heroku container:release web
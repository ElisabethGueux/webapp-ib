FROM ubuntu
LABEL maintainer="elisabeth.gueux@yahoo.fr"
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git #installer git mais de facon non interactive car sinon ca demande des choses
#RUN  apt install -y nginx
RUN rm -Rf /var/www/html/* #dabord supprimer le dossier avant de git clone
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/ #clone le static etc direct dans /var/etc
#ADD static-website-example /var/www/html 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

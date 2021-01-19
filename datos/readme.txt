# Incluye base de datos creada para la tiendita nike,
#
# credenciales del admin son las de default
# User     : spree@example.com
# Password : spree123
#
# Para incluirlos en el proyecto ejecutar los sgtes pasos:
#
# 1.- Cambiar las credenciales (usuario y password)
#     de postgresql en config/database.yml
#
# 2.- Instalar proyecto:
      $ bundle install
#
# 3.- Crear bases de datos:
      $ rake db:create
# 
# 4.- Cargar bases de datos
      $ psql mi_tiendita_development < datos/mi_tiendita_development.sql
      $ psql mi_tiendita_test        < datos/mi_tiendita_test.sql

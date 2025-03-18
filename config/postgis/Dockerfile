FROM postgis/postgis:16-3.4

# Mise à jour des paquets et installation de pgRouting
RUN apt-get update && apt-get install -y \
    postgresql-16-pgrouting \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Vérification de l'installation
#RUN psql -U postgres -c "CREATE EXTENSION pgrouting;"

# Exposer le port PostgreSQL
EXPOSE 5432

# Commande par défaut
CMD ["docker-entrypoint.sh"]
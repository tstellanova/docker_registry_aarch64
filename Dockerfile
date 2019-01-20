FROM budry/registry-arm


COPY ./delete_docker_registry_image.py  /usr/local/bin/delete_docker_registry_image
run chmod +x /usr/local/bin/delete_docker_registry_image

COPY ./new_config.yml /etc/docker/registry/config.yml

EXPOSE 5000
ENTRYPOINT ["/bin/registry"]
CMD ["serve", "/etc/docker/registry/config.yml"]
 

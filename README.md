# Labelling Tool

Can be used to label images from scratch or to check existing labels. Writes label-files in PascalVOC format

# Specifics
 - requires Docker

# Run and build with docker
- Download git repository
- In the downloaded repository build the docker image:
`docker build -t < image_name > .`
- Run the docker container:
```
docker run -it \
--user $(id -u) \
-e DISPLAY=unix$DISPLAY \
--workdir=$(pwd) \
--volume="/home/$USER:/home/$USER" \
--volume="/etc/group:/etc/group:ro" \
--volume="/etc/passwd:/etc/passwd:ro" \
--volume="/etc/shadow:/etc/shadow:ro" \
--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
-v /tmp/.X11-unix:/tmp/.X11-unix \
< image_name > - predefined_labels/predefined_classes.txt
 ```

# Usage

- Use "Open Dir" to open Image directory
- Use "Change Save Dir" to load existing label-file or if not existing to specify saving directory
- Edit "predefined_labels/predefined_classes.txt" file to change labels
- If you do not want to save changes manually enable auto save mode (Under view)
- Make sure you use the PascalVOC format in the sidebar
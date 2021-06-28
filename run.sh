

# Execute example train config file
# docker run --rm --gpus '"device=0"' --cpus="4" --user "$(id -u):$(id -g)" --workdir /app -v "$(pwd)":/app floatblock:latest python3 -u /app/main.py --mode train -tc example

# docker run --rm --gpus '"device=0"' --cpus="4" --user "$(id -u):$(id -g)" --workdir /app -v "$(pwd)":/app floatblock:latest python3 -u /app/main.py --mode train -bf ResNet18_FB12_B --loss-boost 2

# docker run --rm --gpus '"device=0"' --cpus="4" --user "$(id -u):$(id -g)" --workdir /app -v "$(pwd)":/app $(whoami)/floatblock:latest python3 -u /app/main.py --mode train -tc MLPMixerB16_ImageNet_FB12

# Imagenet
docker run --rm --gpus '"device=0"' --cpus="4" --user "$(id -u):$(id -g)" --mount type=bind,source=/dataset,target=/dataset --workdir /app -v "$(pwd)":/app $(whoami)/floatblock:latest python3 -u /app/main.py --mode train -tc MLPMixerB16_ImageNet

# docker run --rm --gpus '"device=0"' --cpus="4" --user "$(id -u):$(id -g)" --mount type=bind,source=/dataset,target=/dataset --workdir /app -v "$(pwd)":/app $(whoami)/floatblock:latest python3 -u /app/main.py --mode generate-config --log False
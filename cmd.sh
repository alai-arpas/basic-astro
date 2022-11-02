

docker run -it --rm -p 8999:80 basic-astro:0.0.1
#docker run -it --rm  --env-file .env.list -p 8999:80 basic-astro:0.0.1

docker tag basic-astro:0.0.1 registry.digitalocean.com/docean-alai-arpas/basic-astro:0.0.1
docker push registry.digitalocean.com/docean-alai-arpas/basic-astro:0.0.1

kubectl apply -f k8_astro.yaml


# aws 
docker build . -t cli-alai:0.0.1
docker tag cli-alai:0.0.1 595547359071.dkr.ecr.eu-south-1.amazonaws.com/cli-alai:0.0.1
docker push 595547359071.dkr.ecr.eu-south-1.amazonaws.com/cli-alai:0.0.1



pnpm run dev
pnpm run build
pnpm run preview

# docker hub 
docker build . -t basic-astro:0.0.1
docker tag basic-astro:0.0.1 arpasali/basic-astro:0.0.1
docker push arpasali/basic-astro:0.0.1
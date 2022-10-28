docker build . -t basic-astro:0.0.1

docker run -it --rm  --env-file .env.list -p 8999:80 basic-astro:0.0.1

docker tag basic-astro:0.0.1 registry.digitalocean.com/docean-alai-arpas/basic-astro:0.0.1


docker push registry.digitalocean.com/docean-alai-arpas/basic-astro:0.0.1

kubectl apply -f k8_astro.yaml


npm run dev


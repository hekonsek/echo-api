version=$(poetry version -s)
image=hekonsek/echo-api
versioned_image=$image:$version
latest_image=$image:latest
docker build . -t $versioned_image
docker push $versioned_image
docker tag $versioned_image $latest_image
docker push $latest_image

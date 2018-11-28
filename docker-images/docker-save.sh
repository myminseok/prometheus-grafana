for image in `cat docker-image-list.txt`; do
echo "pull $image"
docker pull $image
tarfile=`echo "${image//\//_}.tar"`
echo "saving $image to $tarfile"
docker save -o $tarfile $image
gzip $tarfile
echo ""
done;

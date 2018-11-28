for image in `cat docker-image-list.txt`; do
tarfile=`echo "${image//\//_}.tar"`
echo "importing $tarfile $image"
if [ -f "$tarfile.gz" ]; then
 gzip -d $tarfile.gz
fi

docker import  $tarfile $image
echo ""
done;

for image in `cat docker-image-list.txt`; do
tarfile=`echo "${tarfiletmp//\//__}.tar"`
echo "importing $tarfile $image"
if [ -f "$tarfile.gz" ]; then
 gzip -d $tarfile.gz
fi

docker load -i $tarfile
echo ""
done;

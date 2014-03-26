default: data/wall-map.jpg

data/:
	mkdir -p data/

data/wall-map.zip: data/
	curl 'http://storage.algonquinmap.com/v4/Algonquin%20Map%204.0%20-%20Wall%20Map.zip' -o data/wall-map.zip

data/wall-map.jpg: data/wall-map.zip
	cp data/wall-map.zip data/wall-map.zip.tmp
	unzip data/wall-map.zip.tmp 'Algonquin Map 4.0 - Wall Map.jpg' -d data/
	cp 'data/Algonquin Map 4.0 - Wall Map.jpg' data/wall-map.jpg

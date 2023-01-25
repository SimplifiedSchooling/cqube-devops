#!/bin/bash

MY_PATH=microservices

cd "$MY_PATH"
if ! [[ -d spec-ms ]]; then
	git clone https://github.com/Sunbird-cQube/spec-ms.git
	cd "spec-ms"
	git checkout dev
	cd ../
else
	cd "spec-ms"
	git checkout dev
        cd ../
fi

if ! [[ -d ingestion-ms ]]; then
	git clone https://github.com/Sunbird-cQube/ingestion-ms.git
	cd "ingestion-ms"
	git checkout dev
	cd ../
else
	cd "ingestion-ms"
	git checkout dev
	cd ../
fi

if ! [[ -d generator-ms ]]; then
	git clone https://github.com/Sunbird-cQube/generator-ms.git
	cd "generator-ms"
	git checkout dev
	cd ../../
else 
       cd "$MY_PATH"
	cd "generator-ms"
	git checkout dev
	cd ../../

fi


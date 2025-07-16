DIST_PATH=/src/target/release/

all: build extract

buid:
	docker build -t uesave-rs .

extract:
	mkdir -p ./dist
	docker run --rm uesave-rs tar -cC ${DIST_PATH} ./uesave | tar -xC ./dist
	#docker run --rm uesave-rs tar -cC ${DIST_PATH} . | tar -xC ./dist

clean:
	rm -rf ./dist

.PHONY: build extract clean

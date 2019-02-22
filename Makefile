buildCollector:
	docker build ./docker -f ./docker/Collector.Dockerfile -t nist-mirror-collector

runCollector: mirror
	docker run -v ${PWD}/mirror:/var/nist-mirror nist-mirror-collector

runMirror: mirror
	docker run -v ${PWD}/mirror:/usr/share/nginx/html:ro -p 8080:80 nginx:mainline-alpine

mirror:
	mkdir mirror

include vars.sh

install:
	mkdir -p ${APP_ROOT}/bin
	for f in bin/*; do cat $$f | envsubst '$$APP_ROOT' > ${APP_ROOT}/$$f; done
	chmod +x ${APP_ROOT}/bin/*
	cat labtunnel | envsubst '$$APP_ROOT' > ${BINARY_DESTINATION}
	chmod +x ${BINARY_DESTINATION}

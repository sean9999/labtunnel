APP_ROOT=${HOME}/.local/opt/labtunnel

install:
	mkdir -p ${APP_ROOT}
	cp -rf bin ${APP_ROOT}/
	cp -f labtunnel /usr/local/bin/labtunnel

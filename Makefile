all: spec06 spec17

spec06: SPEC06/Dockerfile configs/SPEC06 entrypoint.sh
	docker build -t $@ -f $< .

spec17: SPEC17/Dockerfile configs/SPEC17 entrypoint.sh
	docker build -t $@ -f $< .

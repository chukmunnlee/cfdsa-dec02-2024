#!/bin/bash

kubectl run debug \
	-ti --rm -ndefault \
	--image=nicolaka/netshoot -- /bin/bash


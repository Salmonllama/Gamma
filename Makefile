# See:
# https://sohlich.github.io/post/go_makefile/
# https://github.com/pazuzu156/persephone/blob/master/Makefile

# Go stuff
GOCMD=go
GOBUILD=${GOCMD} build
GOCLEAN=${GOCMD} clean
GOTEST=${GOCMD} test
GOGET=${GOCMD} get

APP=gamma
BUILDDIR=${APP}.out

all: test build

run:
	make clean
	make build
	clear
	./${BUILDDIR}/${APP}

build:
	${GOBUILD} -o ${BUILDDIR}/${APP} -v

clean:
	${GOCLEAN}
	rm -rf ${BUILDDIR}

test:
	${GOTEST} -v

deps:
	${GOGET} github.com/salmonllama/gourd

format:
	gofmt -w .

# TODO: Make installation directories, copy files to installdir, etc
install:

# TODO: Remove the installdirs -> backup?
uninstall:
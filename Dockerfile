FROM registry.fedoraproject.org/fedora:rawhide

MAINTAINER Stephen Gallagher <sgallagh@redhat.com>

RUN dnf -y --setopt=install_weak_deps=False install \
	clang \
	clang-analyzer \
	createrepo_c \
	curl \
	elinks \
	gcc \
	gcc-c++ \
	git-core \
	glib2-devel \
	gobject-introspection-devel \
	gtk-doc \
	libyaml-devel \
	meson \
	ninja-build \
	openssl \
	pkgconf \
	popt-devel \
	python3-autopep8 \
	python3-devel \
	python3-GitPython \
	python3-gobject-base \
	python3-pycodestyle \
	python3-rpm-macros \
	redhat-rpm-config \
	rpm-build \
	rpmdevtools \
	ruby \
	"rubygem(json)" \
	rubygems \
	sudo \
	valgrind \
	wget \
    && dnf -y update \
    && dnf -y clean all

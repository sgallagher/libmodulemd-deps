FROM registry.centos.org/centos:7

MAINTAINER Stephen Gallagher <sgallagh@redhat.com>

RUN yum -y install epel-release \
    && yum -y install \
        clang \
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
        pkgconfig \
        popt-devel \
        python34-devel \
        python34-gobject-base \
        python3-rpm-macros \
        redhat-rpm-config \
        rpm-build \
        rpmdevtools \
        ruby \
        "rubygem(json)" \
        rubygems \
        sudo \
        wget \
    && yum -y update \
    && yum -y clean all

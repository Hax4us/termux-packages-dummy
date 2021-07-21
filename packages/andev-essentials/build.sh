TERMUX_PKG_HOMEPAGE=https://hax4us.com
TERMUX_PKG_DESCRIPTION="Collection of setup scripts for AnDev"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_MAINTAINER="lkpandey950@gmail.com @hax4us"
TERMUX_PKG_VERSION=1
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	cp -f $TERMUX_PKG_BUILDER_DIR/LICENSE $TERMUX_PKG_SRCDIR/
}

termux_step_make_install() {
	install -Dm700 $TERMUX_PKG_BUILDER_DIR/setup-andev $TERMUX_PREFIX/bin/setup-andev
	install -Dm700 $TERMUX_PKG_BUILDER_DIR/sdkmanager $TERMUX_PREFIX/bin/sdkmanager
}

TERMUX_ANDROID_BUILD_TOOLS_VERSION=30.0.3
TERMUX_NDK_VERSION_NUM=21
TERMUX_NDK_REVISION="d"
TERMUX_NDK_VERSION=$TERMUX_NDK_VERSION_NUM$TERMUX_NDK_REVISION

if [ "${TERMUX_PACKAGES_OFFLINE-false}" = "true" ]; then
	export ANDROID_HOME=${TERMUX_SCRIPTDIR}/build-tools/android-sdk
	export NDK=${TERMUX_SCRIPTDIR}/build-tools/android-ndk
else
	: "${ANDROID_HOME:="${HOME}/lib/android-sdk"}"
	: "${NDK:="${HOME}/lib/android-ndk"}"
fi

# Termux packages configuration.
TERMUX_APP_PACKAGE="com.hax4us.andev"
TERMUX_BASE_DIR="/data/data/${TERMUX_APP_PACKAGE}/files"
TERMUX_CACHE_DIR="/data/data/${TERMUX_APP_PACKAGE}/cache"
TERMUX_ANDROID_HOME="${TERMUX_BASE_DIR}/home"
TERMUX_PREFIX="${TERMUX_BASE_DIR}/usr"

# Allow to override setup.
if [ -f "$HOME/.termuxrc" ]; then
	. "$HOME/.termuxrc"
fi

# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

# Extra wheels points to directory with manylinux wheels not available on
# pypi.  For example, matplotlib does not distribute 32-bit wheels, but we
# build and upload these via the 32-bit-builds branch of
# https://github.com/MacPython/matplotlib-wheels
EXTRA_WHEELS_URL=https://5cf40426d9f06eb7461d-6fe47d9331aba7cd62fc36c7196769e4.ssl.cf2.rackcdn.com

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
}

function pip_opts {
    # Define extra pip arguments
    echo "--prefer-binary --find-links $EXTRA_WHEELS_URL"
}

function build_wheel {
    # Horrible set of build requirements installs too-recent numpy when using
    # default pip wheel command
    build_bdist_wheel $@
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    echo "backend : agg" > matplotlibrc
    pytest --pyargs skimage
}

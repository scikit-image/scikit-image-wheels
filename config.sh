# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

# Extra wheels points to directory with manylinux wheels not available on
# pypi.
export STAGING_WHEELS_URL="https://pypi.anaconda.org/multibuild-wheels-staging/label/main/simple/"

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
}

function pip_opts {
    # Define extra pip arguments
    echo "--prefer-binary --extra-index-url $STAGING_WHEELS_URL"
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    echo "backend : agg" > matplotlibrc
    pytest --pyargs skimage
}

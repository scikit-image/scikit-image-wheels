# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

# Extra wheels URL contains manylinux wheels not available on pypi
EXTRA_WHEELS_URL=https://5cf40426d9f06eb7461d-6fe47d9331aba7cd62fc36c7196769e4.ssl.cf2.rackcdn.com

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    :
}

function pip_opts {
    # Define extra pip arguments
    echo "--find-links $EXTRA_WHEELS_URL"
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    python --version
    echo "backend : agg" > matplotlibrc
    pytest -v --doctest-modules
}

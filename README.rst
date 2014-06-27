##########################
Scikit-image wheel builder
##########################

Repository to build scikit-image wheels.

To update:

* Update scikit-image submodule with version you want to build:

    * cd sckit-image && git pull && git checkout DESIRED_TAG
    * cd .. && git add scikit-image

* Check minimum numpy versions to build against in ``.travis.yml`` file.  You
  need to build against the earliest numpy that scikit-image is compatible with;
  see `forward, backward numpy compatibility
  <http://stackoverflow.com/questions/17709641/valueerror-numpy-dtype-has-the-wrong-size-try-recompiling/18369312#18369312>`_

The wheels get uploaded to a rackspace container to which I have the password.
The password is encrypted to my travis account, so the upload won't work for you
from another account.  Either contact me to get set up, or use another upload
service such as github - see for example Jonathan Helmus' `sckit-image wheels
builder <https://github.com/jjhelmus/scikit-image-ci-wheel-builder>`_

I got the rackspace password from Olivier Grisel - we might be able to share
this account across projects - again - please contact me or Olivier if you'd
like this to happen.

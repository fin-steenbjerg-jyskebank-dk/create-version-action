# create-version-action

Imprints the version number into a source file.

The text resplaced in the source file are:

* ##VERSION## is replaced by the version number (argument version to this action)
* ##BUILD_TIME## is replace by the current time
* ##SHA## is replace with current GIT sha 

The version and sha is returned as an output parameter.

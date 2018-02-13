#!/usr/bin/env bash

# 1. update content if any
( cd aide-lautrenet ; git pull )

# 2. use virtualenv
source pelican/bin/activate

# 3. generate html
( cd site ; make html )

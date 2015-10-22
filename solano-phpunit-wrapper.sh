#!/bin/bash

env TDDIUM_OUTPUT_FILE=$TDDIUM_OUTPUT_FILE vendor/bin/solano-phpunit --configuration tests/phpunit.xml $@

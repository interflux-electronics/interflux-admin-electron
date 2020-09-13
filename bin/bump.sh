#!/bin/bash

set -e

echo "-------"
echo "Bumping & tagging version"
echo "-------"

echo "What type of version bump?"
echo "1) major"
echo "2) minor"
echo "3) patch"

while :
do
read -s -n 1 option
case $option in
  1)
    semver=major
    break;
    ;;
  2)
    semver=minor
    break;
    ;;
  3)
    semver=patch
    break;
    ;;
esac
done

echo "You chose: $semver"

before=$(node -p "require('./package').version")

echo "-------"
echo "Version before: $before"
echo "-------"

(set -x; npm version $semver)

after=$(node -p "require('./package').version")

echo "-------"
echo "Version after: $after"
echo "-------"

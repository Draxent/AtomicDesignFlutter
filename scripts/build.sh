#!/bin/sh

echo "# ATOMIC DESIGN"
echo "## Updating Dependencies"
flutter pub get

cd design
echo "# DESIGN"
echo "## Updating Dependencies"
flutter pub get

cd showcase
echo "# SHOWCASE"
echo "## Updating Dependencies"
flutter pub get

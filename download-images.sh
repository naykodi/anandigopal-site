#!/bin/bash
# Run this once to pull all images from the old WordPress site.
# After downloading, you can cancel WordPress hosting.
# Place this script in the same folder as index.html and run:
#   bash download-images.sh

IMG_DIR="images"
BASE="https://anandigopal.com/wp-content/uploads"

declare -A IMAGES=(
  ["logo.jpg"]="$BASE/2024/06/logo.jpg"
  ["hero-kids.jpg"]="$BASE/2024/02/4b504-d9ff1d_0deb11706c124f318debe9003f886346mv2.jpg"
  ["kids-creative.jpg"]="$BASE/2024/02/93c94-d9ff1d_98fe8666039049a9afa55ca7fde6ea16mv2.jpg"
  ["kids-engineering.jpg"]="$BASE/2024/02/8dba7-082a29c869454826b4627602bdae1785.jpg"
  ["holi-kids.jpg"]="$BASE/2024/06/boy-girl-holi.jpg"
  ["fancy-dress.jpg"]="$BASE/2024/06/fancy-dress-science.jpg"
  ["surekha-naykodi.jpg"]="$BASE/2024/06/surekhanaykodi.jpg"
  ["bhaskar-naykodi.jpg"]="$BASE/2024/06/bknaykodi.jpg"
  ["green-day.jpg"]="$BASE/2024/06/green-day-1.jpg"
  ["diwali.jpg"]="$BASE/2024/06/diwali-boys.jpg"
  ["girl-holi.jpg"]="$BASE/2024/06/girl-holi.jpg"
  ["dandiya.jpg"]="$BASE/2024/06/dandiya2.jpg"
  ["graduation.jpg"]="$BASE/2024/06/grad.jpg"
)

echo "Downloading images..."
for NAME in "${!IMAGES[@]}"; do
  URL="${IMAGES[$NAME]}"
  echo "  → $NAME"
  curl -s -L -o "$IMG_DIR/$NAME" "$URL"
done
echo "Done. All images saved to $IMG_DIR/"

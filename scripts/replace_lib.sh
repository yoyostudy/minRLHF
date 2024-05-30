# This script clones the 'torch-discounted-cumsum' GitHub repository,
# removes any existing installation in the virtual environment's site-packages,
# copies the new library files to the appropriate location, and cleans up temporary files.

GITHUB_REPO_URL="https://github.com/toshas/torch-discounted-cumsum.git"
TEMP_DIR="tmp"
TARGET_DIR=".venv/lib/python3.8/site-packages/torch_discounted_cumsum"
TARGET_FOLDER="torch_discounted_cumsum"

echo "Cloning the Github repository torch-discounted-cumsum..."
git clone $GITHUB_REPO_URL $TEMP_DIR

echo "Removing the existing lib of $TARGET_DIR..."
rm -rf $TARGET_DIR/*

echo "Copying the new lib to $TARGET_DIR..."
cp -r $TEMP_DIR/$TARGET_FOLDER/* $TARGET_DIR/

echo "Cleaning up..."
rm -rf $TEMP_DIR

echo "Install library finished."

# Subpixel hinting mode can be chosen by setting the right TrueType interpreter
# version. The available settings are:
#
#     truetype:interpreter-version=35  # Classic mode (default in 2.6)
#     truetype:interpreter-version=38  # Infinality mode
#     truetype:interpreter-version=40  # Minimal mode (default in 2.7)
#
# There are more properties that can be set, separated by whitespace. Please
# refer to the FreeType documentation for details.

# copy this file:
# To global environment:
#     sudo cp freetype2-fix.sh /etc/profile.d/freetype2.sh
# or to kde profile
#     cp freetype2-fix.sh $HOME/.config/plasma-workspace/env/freetype.sh
# or add to /etc/environment
#    FREETYPE_PROPERTIES="truetype:interpreter-version=35"

# Uncomment and configure below
export FREETYPE_PROPERTIES="truetype:interpreter-version=35"

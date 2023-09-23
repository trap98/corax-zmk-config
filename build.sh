#!/bin/bash
set -e
FLAGS="-p"

west build $FLAGS -b nice_nano_v2 -- -DSHIELD="corax56_left nice_view_adapter nice_view" -DZMK_CONFIG=/workspaces/zmk-config/config
mv /workspaces/zmk/app/build/zephyr/zmk.uf2  /workspaces/zmk-config/left.uf2
west build $FLAGS -b nice_nano_v2 -- -DSHIELD="corax56_right nice_view_adapter nice_view" -DZMK_CONFIG=/workspaces/zmk-config/config
mv /workspaces/zmk/app/build/zephyr/zmk.uf2 /workspaces/zmk-config/right.uf2

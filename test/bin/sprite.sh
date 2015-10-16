#!/usr/bin/env bash

echo "** partials";
svg-sprite \
    -c false\
    -S false\
    -d false\
    -s false\
    -D out\
    -w 16\
    -cless\
    --cscss\
    --css-bust false\
    --css-layout vertical\
    --css-render-scss-template tpl/partial.scss.mustache\
    --css-render-scss-dest partials/_flag-partial.scss\
    --css-prefix ".flag-"\
    flags/*.svg

echo "** scss";
svg-sprite \
    -c false\
    -S false\
    -d false\
    -s false\
    -D out\
    -w 16\
    -cless\
    --cscss\
    --css-bust false\
    --css-layout vertical\
    --css-render-scss-template tpl/sprite.scss\
    --css-render-scss-dest sprite.scss\
    --css-example true\
    --css-example-template tpl/test.html.mustache\
    flags/*.svg

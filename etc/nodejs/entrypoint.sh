#!/bin/sh
npm install
if [ ! -z "$APP_ENV" ] ; then
    npm run dev
else
    npm run build
fi


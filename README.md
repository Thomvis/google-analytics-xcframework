This project is based on https://github.com/schrismartin/google-analytics-xcframework and adapted for my needs. Changes:

- I use GoogleAnalytics SDK version 3.17
- To support M1 simulators (which the Google-supplied SDK does not), I've created a dummy implementation that does nothing, but compiles for M1 simulators. The dummy implementation is used for all simulators.

## GoogleAnalytics.xcframework

The output of this project can be found at `frameworks/GoogleAnalytics.xcframework`. Steps to regenerate this file:

`make clean frameworks/GoogleAnalytics.xcframework`
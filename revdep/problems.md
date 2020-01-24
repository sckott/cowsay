# multicolor

<details>

* Version: 0.1.3
* Source code: https://github.com/cran/multicolor
* URL: http://github.com/aedobbyn/multicolor/
* BugReports: https://github.com/aedobbyn/multicolor/issues/
* Date/Publication: 2019-04-13 23:12:51 UTC
* Number of recursive dependencies: 64

Run `revdep_details(,"multicolor")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("multicolor")
      ── 1. Failure: integration with cowsay (@test-multicolor.R#131)  ───────────────
      `suppressMessages(...)` produced output.
      
      ── 2. Failure: integration with cowsay (@test-multicolor.R#140)  ───────────────
      `suppressMessages(...)` produced output.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 30 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 2 ]
      1. Failure: integration with cowsay (@test-multicolor.R#131) 
      2. Failure: integration with cowsay (@test-multicolor.R#140) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘cowsay’
      All declared Imports should be used.
    ```


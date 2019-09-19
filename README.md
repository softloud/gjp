
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gjp

<!-- badges: start -->

<!-- badges: end -->

## installation

You can install the current of gjp with:

``` r

# you may need to install devtools first with
# install.packages("devtools")
devtools::install_github("softloud/gjp")
```

## what’s in it?

This is a data package containing wrangled results for political
knowledge from gjp data on the [Harvard
Dataverse](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/BPCDH5).
It’s creative commons.

I imagine you’ll be primarily interested in the dataset with outcomes.

The `forecasts` dataset is combines the 4 year’s csvs of survey\_fcasts
data and then filters it:

  - binary outcomes (by combining with ifps data set)
  - “closed” status questions
  - if multiple entries, first and last (see `time_terminal` for type of
    entry)
  - these have been filtered to `options` that contain `Yes` or `No`
  - `opts_n` contains the number of options, this dataset has been
    filtered for 2 options only.
  - `q_conditional` indicates 1 if the question text `options` field
    begins with `If` and 0 if it begins with something else

Documentation coming, but here’s the dataset in the meantime.

``` r

library(gjp)
library(tidyverse)


# this code displays the data question_results which will be available once you 
# install() and library() gjp
forecasts %>% 
  head() %>% 
  select(ifp_id, user_id, year, outcome, options, n_opts, q_conditional, options_yn, timestamp, q_type,  q_status) %>% # remove question text for formatting
  kableExtra::kable()
```

<table>

<thead>

<tr>

<th style="text-align:left;">

ifp\_id

</th>

<th style="text-align:right;">

user\_id

</th>

<th style="text-align:right;">

year

</th>

<th style="text-align:left;">

outcome

</th>

<th style="text-align:left;">

options

</th>

<th style="text-align:right;">

n\_opts

</th>

<th style="text-align:right;">

q\_conditional

</th>

<th style="text-align:left;">

options\_yn

</th>

<th style="text-align:left;">

timestamp

</th>

<th style="text-align:right;">

q\_type

</th>

<th style="text-align:left;">

q\_status

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

1004-0

</td>

<td style="text-align:right;">

600

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:left;">

1)  Yes, (b) No
    </td>
    <td style="text-align:right;">
    2
    </td>
    <td style="text-align:right;">
    0
    </td>
    <td style="text-align:left;">
    TRUE
    </td>
    <td style="text-align:left;">
    2011-08-31 16:17:18
    </td>
    <td style="text-align:right;">
    0
    </td>
    <td style="text-align:left;">
    closed
    </td>
    </tr>
    <tr>
    <td style="text-align:left;">
    1004-0
    </td>
    <td style="text-align:right;">
    600
    </td>
    <td style="text-align:right;">
    1
    </td>
    <td style="text-align:left;">
    b
    </td>
    <td style="text-align:left;">
    1)  Yes, (b) No
        </td>
        <td style="text-align:right;">
        2
        </td>
        <td style="text-align:right;">
        0
        </td>
        <td style="text-align:left;">
        TRUE
        </td>
        <td style="text-align:left;">
        2011-08-31 16:17:18
        </td>
        <td style="text-align:right;">
        0
        </td>
        <td style="text-align:left;">
        closed
        </td>
        </tr>
        <tr>
        <td style="text-align:left;">
        1008-0
        </td>
        <td style="text-align:right;">
        600
        </td>
        <td style="text-align:right;">
        1
        </td>
        <td style="text-align:left;">
        a
        </td>
        <td style="text-align:left;">
        1)  Yes, (b) No
            </td>
            <td style="text-align:right;">
            2
            </td>
            <td style="text-align:right;">
            0
            </td>
            <td style="text-align:left;">
            TRUE
            </td>
            <td style="text-align:left;">
            2011-08-31 16:18:27
            </td>
            <td style="text-align:right;">
            0
            </td>
            <td style="text-align:left;">
            closed
            </td>
            </tr>
            <tr>
            <td style="text-align:left;">
            1008-0
            </td>
            <td style="text-align:right;">
            600
            </td>
            <td style="text-align:right;">
            1
            </td>
            <td style="text-align:left;">
            a
            </td>
            <td style="text-align:left;">
            1)  Yes, (b) No
                </td>
                <td style="text-align:right;">
                2
                </td>
                <td style="text-align:right;">
                0
                </td>
                <td style="text-align:left;">
                TRUE
                </td>
                <td style="text-align:left;">
                2011-08-31 16:18:27
                </td>
                <td style="text-align:right;">
                0
                </td>
                <td style="text-align:left;">
                closed
                </td>
                </tr>
                <tr>
                <td style="text-align:left;">
                1006-0
                </td>
                <td style="text-align:right;">
                600
                </td>
                <td style="text-align:right;">
                1
                </td>
                <td style="text-align:left;">
                b
                </td>
                <td style="text-align:left;">
                1)  Yes, (b) No
                    </td>
                    <td style="text-align:right;">
                    2
                    </td>
                    <td style="text-align:right;">
                    0
                    </td>
                    <td style="text-align:left;">
                    TRUE
                    </td>
                    <td style="text-align:left;">
                    2011-08-31 16:18:47
                    </td>
                    <td style="text-align:right;">
                    0
                    </td>
                    <td style="text-align:left;">
                    closed
                    </td>
                    </tr>
                    <tr>
                    <td style="text-align:left;">
                    1006-0
                    </td>
                    <td style="text-align:right;">
                    600
                    </td>
                    <td style="text-align:right;">
                    1
                    </td>
                    <td style="text-align:left;">
                    b
                    </td>
                    <td style="text-align:left;">
                    1)  Yes, (b) No
                        </td>
                        <td style="text-align:right;">
                        2
                        </td>
                        <td style="text-align:right;">
                        0
                        </td>
                        <td style="text-align:left;">
                        TRUE
                        </td>
                        <td style="text-align:left;">
                        2011-08-31 16:18:47
                        </td>
                        <td style="text-align:right;">
                        0
                        </td>
                        <td style="text-align:left;">
                        closed
                        </td>
                        </tr>
                        </tbody>
                        </table>

<!-- end list -->

``` r
# an overview of what we've got
forecasts %>% 
  skimr::skim()
#> Skim summary statistics
#>  n obs: 448418 
#>  n variables: 23 
#> 
#> ── Variable type:character ───────────────────────────────────────────────────────────────
#>       variable missing complete      n min max empty n_unique
#>  answer_option       0   448418 448418   1   1     0        2
#>            ctt       0   448418 448418   2   4     0      273
#>         ifp_id       0   448418 448418   6   6     0      382
#>        options       0   448418 448418  15 195     0       80
#>        outcome       0   448418 448418   1   1     0        2
#>       q_status       0   448418 448418   6   6     0        1
#>         q_text       0   448418 448418  50 290     0      380
#>       training       0   448418 448418   1   1     0       13
#> 
#> ── Variable type:Date ────────────────────────────────────────────────────────────────────
#>    variable missing complete      n        min        max     median
#>  fcast_date       0   448418 448418 2011-08-31 2015-06-09 2012-12-18
#>  n_unique
#>      1168
#> 
#> ── Variable type:integer ─────────────────────────────────────────────────────────────────
#>     variable missing complete      n      mean        sd p0       p25
#>  raw_dat_obs       0   448418 448418 714372.38 635768.92  1 224112.75
#>       p50   p75    p100     hist
#>  557963.5 1e+06 2783783 ▇▅▃▂▁▁▁▁
#> 
#> ── Variable type:logical ─────────────────────────────────────────────────────────────────
#>    variable missing complete      n mean              count
#>  options_yn       0   448418 448418    1 TRU: 448418, NA: 0
#> 
#> ── Variable type:numeric ─────────────────────────────────────────────────────────────────
#>       variable missing complete      n      mean        sd     p0
#>           cond       0   448418 448418      2.83      1.53      1
#>      expertise   77614   370804 448418      2.38      1.04      0
#>     fcast_type       0   448418 448418      0.18      0.82      0
#>    forecast_id       0   448418 448418 244187.92 465588.98 -2e+05
#>         n_opts       0   448418 448418      2         0         2
#>  q_conditional       0   448418 448418      0.15      0.36      0
#>         q_type       0   448418 448418      0.28      0.7       0
#>        user_id      10   448408 448418  15436.8   35545.95      3
#>          value       0   448418 448418      0.5       0.34      0
#>       viewtime  277702   170716 448418    333.81   7398.95      0
#>           year       0   448418 448418      2.19      1.12      1
#>        p25      p50      p75    p100     hist
#>       1         4       4          5 ▆▂▁▁▁▇▁▂
#>       2         2       3          5 ▁▆▁▇▇▁▂▁
#>       0         0       0          4 ▇▁▁▁▁▁▁▁
#>  -55163.75 120661   4e+05    2259551 ▇▅▂▁▁▁▁▁
#>       2         2       2          2 ▁▁▁▇▁▁▁▁
#>       0         0       0          1 ▇▁▁▁▁▁▁▂
#>       0         0       0          4 ▇▁▁▁▁▁▁▁
#>    2519      4315    6825     182001 ▇▁▁▁▁▁▁▁
#>       0.19      0.5     0.81       1 ▇▅▃▃▂▅▃▇
#>      12        46     200     778955 ▇▁▁▁▁▁▁▁
#>       1         2       3          4 ▇▁▅▁▁▅▁▃
#> 
#> ── Variable type:POSIXct ─────────────────────────────────────────────────────────────────
#>   variable missing complete      n        min        max     median
#>  timestamp       0   448418 448418 2011-08-31 2015-06-09 2012-12-18
#>  n_unique
#>    232445
```

But that code just makes it pretty. To access it in R, after loading
`gjp::` with `library(gjp)`:

``` r
 
forecasts
#> # A tibble: 448,418 x 23
#>    ifp_id q_text q_type outcome options n_opts ctt    cond training user_id
#>    <chr>  <chr>   <dbl> <chr>   <chr>    <dbl> <chr> <dbl> <chr>      <dbl>
#>  1 1004-0 Will …      0 b       (a) Ye…      2 1a        1 a            600
#>  2 1004-0 Will …      0 b       (a) Ye…      2 1a        1 a            600
#>  3 1008-0 By 31…      0 a       (a) Ye…      2 1a        1 a            600
#>  4 1008-0 By 31…      0 a       (a) Ye…      2 1a        1 a            600
#>  5 1006-0 Will …      0 b       (a) Ye…      2 1a        1 a            600
#>  6 1006-0 Will …      0 b       (a) Ye…      2 1a        1 a            600
#>  7 1003-0 Will …      0 b       (a) Ye…      2 1a        1 a            600
#>  8 1005-0 Will …      0 a       (a) Ye…      2 1a        1 a            600
#>  9 1005-0 Will …      0 a       (a) Ye…      2 1a        1 a            600
#> 10 1004-0 Will …      0 b       (a) Ye…      2 1a        1 a           2986
#> # … with 448,408 more rows, and 13 more variables: forecast_id <dbl>,
#> #   fcast_type <dbl>, answer_option <chr>, value <dbl>, fcast_date <date>,
#> #   expertise <dbl>, q_status <chr>, viewtime <dbl>, year <dbl>,
#> #   timestamp <dttm>, raw_dat_obs <int>, options_yn <lgl>,
#> #   q_conditional <dbl>

# to see the if questions, we can filter by q_conditional
forecasts %>% 
  dplyr::filter(q_conditional == 1) %>% 
  head() %>% 
  select(q_text, options)
#> # A tibble: 6 x 2
#>   q_text                               options                             
#>   <chr>                                <chr>                               
#> 1 Will al-Shabaab commence official t… If Sharif Sheikh Ahmed does not win…
#> 2 Will al-Shabaab commence official t… If Sharif Sheikh Ahmed does not win…
#> 3 Will Syria use chemical or biologic… If there is not a substantial letha…
#> 4 Will Syria use chemical or biologic… If there is not a substantial letha…
#> 5 Will Syria use chemical or biologic… If there is not a substantial letha…
#> 6 Will Syria use chemical or biologic… If there is not a substantial letha…

# now let's make sure we've got only two options
forecasts %>% 
  pluck("n_opts") %>% 
  summary()
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>       2       2       2       2       2       2

# now to check we've got the correct timepoints
forecasts %>% 
  pluck("fcast_type") %>% 
  table() # should only have 0 and 4
#> .
#>      0      4 
#> 428758  19660
```

you can write this table out of R to a .csv with

``` r

# You may need to install.packages("readr")
readr::write_csv(forecasts, "<path/file>.csv") 
 
```

where you replace `<path/file>` with your desired file name and
location.

## these data are documented

This is (optimistically) where you’ll find more information about the
size of the table, and what columns and rows it has.

``` r
# check out the help for a dataset in gjp
library(gjp)
?question_results
```

## but wait there’s more

But there’s some other datasets, too.

``` r

# question results
question_results %>% head()
#> # A tibble: 6 x 7
#>    year question_no question        original_row user_id confidence outcome
#>   <dbl>       <dbl> <chr>                  <int>   <dbl>      <dbl>   <dbl>
#> 1     1           1 The leadership…            1       3        0.6       0
#> 2     1           1 The leadership…            2       5        0.5       1
#> 3     1           1 The leadership…            3       6        0.7       1
#> 4     1           1 The leadership…            4      10        0.9       1
#> 5     1           1 The leadership…            5      14        0.6       1
#> 6     1           1 The leadership…            6      15        0.9       1

# meta data about all data files
meta_data %>% head()
#> # A tibble: 6 x 6
#>   file           is_csv file_path              variables  first_var pk_flag
#>   <chr>          <lgl>  <chr>                  <named li> <chr>     <lgl>  
#> 1 all_individua… TRUE   analysis/data/raw_dat… <chr [1,5… userid_y… TRUE   
#> 2 ifps-text.csv  TRUE   analysis/data/raw_dat… <chr [3]>  no        FALSE  
#> 3 ifps.csv       TRUE   analysis/data/raw_dat… <chr [3]>  no        FALSE  
#> 4 pm_batch_orde… TRUE   analysis/data/raw_dat… <chr [9]>  Market.N… FALSE  
#> 5 pm_batch_orde… TRUE   analysis/data/raw_dat… <chr [9]>  Market.N… FALSE  
#> 6 pm_batch_orde… TRUE   analysis/data/raw_dat… <chr [9]>  Market.N… FALSE

# participants responses raw; the outcomes are extracted from this
participants_responses %>% dim()
#> [1] 14001  1539

# questions text, number, and year reference
questions_text %>% head()
#> # A tibble: 6 x 3
#>      yr    no question                                                     
#>   <dbl> <dbl> <chr>                                                        
#> 1     1     1 The leadership of Saudi Arabia, like that of Iran, embraces …
#> 2     1     2 Pakistan has a majority Hindu population. [F]                
#> 3     1     3 The Japanese economy has registered GDP growth rates between…
#> 4     1     4 The International Monetary Fund has had to lend Greece many …
#> 5     1     5 The United Kingdom never adopted the euro as its currency. […
#> 6     1     6 Azerbaijan and Armenia have formally settled their border di…

# questions reference file provided
questions %>% dim()
#> [1] 617  14
```

## after Germany

Proper documentation and those demographics for Bonnie.

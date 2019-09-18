
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
  select(ifp_id, user_id, year, outcome, options, n_opts, q_conditional, options_yn, time_terminal, timestamp, q_type,  q_status) %>% # remove question text for formatting
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

time\_terminal

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

1001-0

</td>

<td style="text-align:right;">

3

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
    single\_entry
    </td>
    <td style="text-align:left;">
    2011-09-06 05:46:12
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
    1001-0
    </td>
    <td style="text-align:right;">
    3
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
        single\_entry
        </td>
        <td style="text-align:left;">
        2011-09-06 05:46:12
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
        1001-0
        </td>
        <td style="text-align:right;">
        15
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
            single\_entry
            </td>
            <td style="text-align:left;">
            2011-09-06 19:22:39
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
            1001-0
            </td>
            <td style="text-align:right;">
            15
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
                single\_entry
                </td>
                <td style="text-align:left;">
                2011-09-06 19:22:39
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
                1001-0
                </td>
                <td style="text-align:right;">
                19
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
                    single\_entry
                    </td>
                    <td style="text-align:left;">
                    2011-09-06 09:20:49
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
                    1001-0
                    </td>
                    <td style="text-align:right;">
                    19
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
                        single\_entry
                        </td>
                        <td style="text-align:left;">
                        2011-09-06 09:20:49
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
#>  n obs: 941385 
#>  n variables: 25 
#> 
#> ── Variable type:character ───────────────────────────────────────────────────────────────
#>       variable missing complete      n min max empty n_unique
#>  answer_option       0   941385 941385   1   1     0        3
#>            ctt       0   941385 941385   2   4     0      273
#>         ifp_id       0   941385 941385   6   6     0      386
#>        options       0   941385 941385  15 195     0       84
#>        outcome       0   941385 941385   1   1     0        3
#>       q_status       0   941385 941385   6   6     0        1
#>         q_text       0   941385 941385  50 290     0      384
#>  time_terminal       0   941385 941385  12  13     0        3
#>       training       0   941385 941385   1   1     0       13
#> 
#> ── Variable type:Date ────────────────────────────────────────────────────────────────────
#>    variable missing complete      n        min        max     median
#>  fcast_date       0   941385 941385 2011-08-31 2015-06-09 2014-02-21
#>  n_unique
#>      1188
#> 
#> ── Variable type:integer ─────────────────────────────────────────────────────────────────
#>     variable missing complete      n       mean        sd p0    p25
#>  raw_dat_obs       0   941385 941385 1190681.37 886868.04  1 323577
#>      p50     p75    p100     hist
#>  1075698 2132646 2784043 ▇▅▃▃▂▂▅▃
#> 
#> ── Variable type:logical ─────────────────────────────────────────────────────────────────
#>    variable missing complete      n mean                           count
#>  min_eq_max       0   941385 941385  0.4 FAL: 560896, TRU: 380489, NA: 0
#>  options_yn       0   941385 941385  1                TRU: 941385, NA: 0
#> 
#> ── Variable type:numeric ─────────────────────────────────────────────────────────────────
#>       variable missing complete      n     mean        sd     p0     p25
#>           cond       0   941385 941385     2.36      1.53      1    1   
#>      expertise  423793   517592 941385     2.38      1.07      0    2   
#>     fcast_type       0   941385 941385     0.72      0.72      0    0   
#>    forecast_id       0   941385 941385 7e+05    837062.22 -2e+05 7631   
#>         n_opts       0   941385 941385     2.02      0.14      2    2   
#>  q_conditional       0   941385 941385     0.13      0.34      0    0   
#>         q_type       0   941385 941385     0.24      0.65      0    0   
#>        user_id      34   941351 941385 40021.72  55084.45      3 3333   
#>          value       0   941385 941385     0.5       0.35      0    0.15
#>       viewtime  382842   558543 941385   370.75   9044.12      0   15   
#>           year       0   941385 941385     2.81      1.24      1    2   
#>       p50       p75    p100     hist
#>       1        4          5 ▇▂▁▁▁▅▁▁
#>       2        3          5 ▁▆▁▇▇▁▂▁
#>       1        1          4 ▆▇▁▁▁▁▁▁
#>  432210   908276    2259701 ▇▃▅▂▁▁▁▆
#>       2        2          3 ▇▁▁▁▁▁▁▁
#>       0        0          1 ▇▁▁▁▁▁▁▁
#>       0        0          4 ▇▁▁▁▁▁▁▁
#>    6376   124269     182001 ▇▁▁▁▁▂▁▁
#>       0.5      0.85       1 ▇▅▂▃▂▃▃▇
#>      48      181    2118638 ▇▁▁▁▁▁▁▁
#>       3        4          4 ▅▁▃▁▁▂▁▇
#> 
#> ── Variable type:POSIXct ─────────────────────────────────────────────────────────────────
#>   variable missing complete      n        min        max     median
#>  timestamp       0   941385 941385 2011-08-31 2015-06-09 2014-02-21
#>  n_unique
#>    454578
```

But that code just makes it pretty. To access it in R, after loading
`gjp::` with `library(gjp)`:

``` r
 
forecasts
#> # A tibble: 941,385 x 25
#>    ifp_id user_id min_eq_max time_terminal timestamp           q_text
#>    <chr>    <dbl> <lgl>      <chr>         <dttm>              <chr> 
#>  1 1001-0       3 TRUE       single_entry  2011-09-06 05:46:12 Will …
#>  2 1001-0       3 TRUE       single_entry  2011-09-06 05:46:12 Will …
#>  3 1001-0      15 TRUE       single_entry  2011-09-06 19:22:39 Will …
#>  4 1001-0      15 TRUE       single_entry  2011-09-06 19:22:39 Will …
#>  5 1001-0      19 TRUE       single_entry  2011-09-06 09:20:49 Will …
#>  6 1001-0      19 TRUE       single_entry  2011-09-06 09:20:49 Will …
#>  7 1001-0      23 TRUE       single_entry  2011-09-12 04:27:10 Will …
#>  8 1001-0      23 TRUE       single_entry  2011-09-12 04:27:10 Will …
#>  9 1001-0      25 TRUE       single_entry  2011-09-07 08:22:12 Will …
#> 10 1001-0      25 TRUE       single_entry  2011-09-07 08:22:12 Will …
#> # … with 941,375 more rows, and 19 more variables: q_type <dbl>,
#> #   outcome <chr>, options <chr>, n_opts <dbl>, ctt <chr>, cond <dbl>,
#> #   training <chr>, forecast_id <dbl>, fcast_type <dbl>,
#> #   answer_option <chr>, value <dbl>, fcast_date <date>, expertise <dbl>,
#> #   q_status <chr>, viewtime <dbl>, year <dbl>, raw_dat_obs <int>,
#> #   options_yn <lgl>, q_conditional <dbl>

# to see the if questions, we can filter by q_conditional
forecasts %>% 
  dplyr::filter(q_conditional == 1) %>% 
  head() %>% 
  select(q_text, options)
#> # A tibble: 6 x 2
#>   q_text                              options                              
#>   <chr>                               <chr>                                
#> 1 Will Syria use chemical or biologi… If there is not a substantial lethal…
#> 2 Will Syria use chemical or biologi… If there is not a substantial lethal…
#> 3 Will Syria use chemical or biologi… If there is not a substantial lethal…
#> 4 Will Syria use chemical or biologi… If there is not a substantial lethal…
#> 5 Will Syria use chemical or biologi… If there is not a substantial lethal…
#> 6 Will Syria use chemical or biologi… If there is not a substantial lethal…
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

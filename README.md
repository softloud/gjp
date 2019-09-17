
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

Documentation coming, but here’s the dataset in the meantime.

``` r

library(gjp)
library(tidyverse)


# this code displays the data question_results which will be available once you 
# install() and library() gjp
forecasts %>% 
  head() %>% 
  select(-q_text) %>% # remove question text for formatting
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

<th style="text-align:left;">

min\_eq\_max

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

ctt

</th>

<th style="text-align:right;">

cond

</th>

<th style="text-align:left;">

training

</th>

<th style="text-align:right;">

forecast\_id

</th>

<th style="text-align:right;">

fcast\_type

</th>

<th style="text-align:left;">

answer\_option

</th>

<th style="text-align:right;">

value

</th>

<th style="text-align:left;">

fcast\_date

</th>

<th style="text-align:right;">

expertise

</th>

<th style="text-align:left;">

q\_status

</th>

<th style="text-align:right;">

viewtime

</th>

<th style="text-align:right;">

year

</th>

<th style="text-align:right;">

raw\_dat\_obs

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

2b

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

\-197541

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

a

</td>

<td style="text-align:right;">

0.50

</td>

<td style="text-align:left;">

2011-09-06

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

closed

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

5556

</td>

</tr>

<tr>

<td style="text-align:left;">

1001-0

</td>

<td style="text-align:right;">

3

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

2b

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

\-197541

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

0.50

</td>

<td style="text-align:left;">

2011-09-06

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

closed

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

5557

</td>

</tr>

<tr>

<td style="text-align:left;">

1001-0

</td>

<td style="text-align:right;">

15

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

4b12

</td>

<td style="text-align:right;">

4

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

\-195380

</td>

<td style="text-align:right;">

0

</td>

<td style="text-align:left;">

a

</td>

<td style="text-align:right;">

0.25

</td>

<td style="text-align:left;">

2011-09-06

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:left;">

closed

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

8377

</td>

</tr>

<tr>

<td style="text-align:left;">

1001-0

</td>

<td style="text-align:right;">

15

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

4b12

</td>

<td style="text-align:right;">

4

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

\-195380

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

0.75

</td>

<td style="text-align:left;">

2011-09-06

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:left;">

closed

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

8378

</td>

</tr>

<tr>

<td style="text-align:left;">

1001-0

</td>

<td style="text-align:right;">

19

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

2a

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:left;">

a

</td>

<td style="text-align:right;">

\-197306

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

a

</td>

<td style="text-align:right;">

0.60

</td>

<td style="text-align:left;">

2011-09-06

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

closed

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

5858

</td>

</tr>

<tr>

<td style="text-align:left;">

1001-0

</td>

<td style="text-align:right;">

19

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

2a

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:left;">

a

</td>

<td style="text-align:right;">

\-197306

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

b

</td>

<td style="text-align:right;">

0.40

</td>

<td style="text-align:left;">

2011-09-06

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:left;">

closed

</td>

<td style="text-align:right;">

NA

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

5859

</td>

</tr>

</tbody>

</table>

But that code just makes it pretty. To access it in R, after loading
`gjp::` with `library(gjp)`:

``` r
 
forecasts 
#> # A tibble: 935,419 x 20
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
#> # … with 935,409 more rows, and 14 more variables: q_type <dbl>,
#> #   ctt <chr>, cond <dbl>, training <chr>, forecast_id <dbl>,
#> #   fcast_type <dbl>, answer_option <chr>, value <dbl>, fcast_date <date>,
#> #   expertise <dbl>, q_status <chr>, viewtime <dbl>, year <dbl>,
#> #   raw_dat_obs <int>

# you can write this table out of R to a .csv with 
# readr::write_csv(forecasts, "<path/file>.csv") 
# where you replace <path/file> with your desired file name and location.
```

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

## upcoming

Those demographics for Bonnie.
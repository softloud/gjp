
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gjp

<!-- badges: start -->

<!-- badges: end -->

``` r
 
# packages used in this analysis
library(tidyverse, quietly = TRUE)
#> ── Attaching packages ───────────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──
#> ✔ ggplot2 3.2.1     ✔ purrr   0.3.2
#> ✔ tibble  2.1.3     ✔ dplyr   0.8.3
#> ✔ tidyr   0.8.3     ✔ stringr 1.4.0
#> ✔ readr   1.3.1     ✔ forcats 0.4.0
#> ── Conflicts ──────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
library(gjp)

# in case i forget to dplyr:: the filter calls 
conflicted::conflict_prefer("filter", winner = "dplyr")
#> [conflicted] Will prefer dplyr::filter over any other package
```

# objective

We wish to have the following desired output variables with filters
applied.

## desired output

These variables in a table:

  - userId  
  - questionId  
  - 1st\_estimated\_probability\_ofOutput1  
  - last\_ estimated\_probability\_ofOutput1  
  - outcome(0/1)
  - cond\_question(0/1)

## filtered by

  - closed questions
  - binary questions
  - first & last response to be converted into wide format

# get data

## files

I think there are two places we get the observations of interest:

1.  Files called **survey\_fcasts.yr\>n\<.csv**, where **\>n\<** takes
    the values 1, 2, 3, or, 4, these have forecast data.
2.  The **ifps.csv** file that has information about the questions.

<!-- end list -->

``` r
 
# this script reads in all the csv files with fcast from the data-raw directory
all_data <-
    here::here() %>%
    paste0("/data-raw") %>%
    list.files() %>%
    str_subset("fcast") %>%
    paste0(here::here(), "/data-raw/", .) %>% map(read_csv) %>% 
    map(select, -team) %>% # hopefully team variable is not required
    bind_rows()
#> Warning: 93008 parsing failures.
#>  row  col           expected actual                                                               file
#> 2913 team 1/0/T/F/TRUE/FALSE      4 '/home/charles/Documents/repos/gjp/data-raw/survey_fcasts.yr1.csv'
#> 2914 team 1/0/T/F/TRUE/FALSE      4 '/home/charles/Documents/repos/gjp/data-raw/survey_fcasts.yr1.csv'
#> 2920 team 1/0/T/F/TRUE/FALSE      2 '/home/charles/Documents/repos/gjp/data-raw/survey_fcasts.yr1.csv'
#> 2921 team 1/0/T/F/TRUE/FALSE      2 '/home/charles/Documents/repos/gjp/data-raw/survey_fcasts.yr1.csv'
#> 2922 team 1/0/T/F/TRUE/FALSE      2 '/home/charles/Documents/repos/gjp/data-raw/survey_fcasts.yr1.csv'
#> .... .... .................. ...... ..................................................................
#> See problems(...) for more details.
```

I *think* these errors are innocuous misreads of the team variable, but
am happy to look into this further if you think it warrants it.

# get variables

These variables in a table:

  - userId  
  - questionId  
  - 1st\_estimated\_probability\_ofOutput1  
  - last\_ estimated\_probability\_ofOutput1  
  - outcome(0/1)
  - cond\_question(0/1)

## userId

We have some `NA`s we need to filter out.

``` r
all_data$user_id %>% summary()
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#>       3    3926    9068   39555  123238  182001      43
```

## questionId

`ifp_id` variable found in both datasets.

From the forecasts data we have , and from the questions, we have .

``` r
 
all_data$ifp_id %>% str()
#>  chr [1:3143460] "1004-0" "1004-0" "1008-0" "1008-0" "1006-0" "1006-0" ...
questions$ifp_id %>% str()
#>  chr [1:617] "1001-0" "1002-0" "1003-0" "1004-0" "1005-0" "1006-0" ...
```

## estimated probability

  - 1st\_estimated\_probability\_ofOutput1  
  - last\_ estimated\_probability\_ofOutput1

Now, if I’m understanding this correctly, the forecasts data is in long
form, and we want in wide form with the first and last observation.

Now, I’m not entirely sure about this, but I think this is the `value`
variable in the forecasts dataset.

## selecting those variables

``` r
# select from the fcasts
fcasts_var <- all_data %>% # all fcasts .csv files bundled
    select(
        ifp_id, # question id
        user_id, 
        value, # estimated probability 
        q_status, # filter by closed
        timestamp
        )
 

# select from the ifps.csv file
questions_var <- questions %>%
    select(ifp_id, # question id
           n_opts,
           q_type,
           outcome
           )  %>% 
    mutate(
        # mark as conditional
        q_conditional = n_opts == 2
    ) 


# join together
output_var <- 
    inner_join(questions_var, fcasts_var, by = "ifp_id")

# take a look
output_var %>% skimr::skim()
#> Skim summary statistics
#>  n obs: 3143460 
#>  n variables: 9 
#> 
#> ── Variable type:character ───────────────────────────────────────────────────────────────────────────────────────────
#>  variable missing complete       n min max empty n_unique
#>    ifp_id       0  3143460 3143460   6   6     0      614
#>   outcome  359417  2784043 3143460   1   1     0        5
#>  q_status       0  3143460 3143460   6   6     0        3
#> 
#> ── Variable type:logical ─────────────────────────────────────────────────────────────────────────────────────────────
#>       variable missing complete       n mean
#>  q_conditional       0  3143460 3143460 0.62
#>                              count
#>  TRU: 1960790, FAL: 1182670, NA: 0
#> 
#> ── Variable type:numeric ─────────────────────────────────────────────────────────────────────────────────────────────
#>  variable missing complete       n     mean       sd p0     p25    p50
#>    n_opts       0  3143460 3143460     2.76     1.08  2    2       2  
#>    q_type       0  3143460 3143460     1.94     2.61  0    0       0  
#>   user_id      43  3143417 3143460 39555.06 53749.65  3 3926    9068  
#>     value       0  3143460 3143460     0.41     0.37  0    0.05    0.3
#>        p75   p100     hist
#>       4         5 ▇▁▁▁▁▂▁▂
#>       6         6 ▇▁▁▁▁▁▁▅
#>  123238    182001 ▇▁▁▁▁▂▁▁
#>       0.79      1 ▇▃▂▂▁▂▂▅
#> 
#> ── Variable type:POSIXct ─────────────────────────────────────────────────────────────────────────────────────────────
#>   variable missing complete       n        min        max     median
#>  timestamp       0  3143460 3143460 2011-08-31 2015-06-09 2014-08-28
#>  n_unique
#>   1215151
```

# filters

``` r
# we have missing user_ids
filtered_data <-
    output_var %>% 
    dplyr::filter(
        !is.na(user_id),
        q_conditional == TRUE,
        q_status == "closed"
    )

filtered_data %>% skimr::skim()
#> Skim summary statistics
#>  n obs: 1659422 
#>  n variables: 9 
#> 
#> ── Variable type:character ───────────────────────────────────────────────────────────────────────────────────────────
#>  variable missing complete       n min max empty n_unique
#>    ifp_id       0  1659422 1659422   6   6     0      382
#>   outcome       0  1659422 1659422   1   1     0        2
#>  q_status       0  1659422 1659422   6   6     0        1
#> 
#> ── Variable type:logical ─────────────────────────────────────────────────────────────────────────────────────────────
#>       variable missing complete       n mean               count
#>  q_conditional       0  1659422 1659422    1 TRU: 1659422, NA: 0
#> 
#> ── Variable type:numeric ─────────────────────────────────────────────────────────────────────────────────────────────
#>  variable missing complete       n     mean       sd p0     p25    p50
#>    n_opts       0  1659422 1659422     2        0     2    2       2  
#>    q_type       0  1659422 1659422     0.28     0.69  0    0       0  
#>   user_id       0  1659422 1659422 38121.13 53333.16  3 3559    8811  
#>     value       0  1659422 1659422     0.5      0.36  0    0.15    0.5
#>       p75   p100     hist
#>      2         2 ▁▁▁▇▁▁▁▁
#>      0         4 ▇▁▁▁▁▁▁▁
#>  23336    182001 ▇▁▁▁▁▂▁▁
#>      0.85      1 ▇▃▂▃▂▃▃▇
#> 
#> ── Variable type:POSIXct ─────────────────────────────────────────────────────────────────────────────────────────────
#>   variable missing complete       n        min        max     median
#>  timestamp       0  1659422 1659422 2011-08-31 2015-06-09 2014-05-08
#>  n_unique
#>    811223
```

Now, let’s check the variables of interest before we remove them.

## Conditional

    From variables.txt:
    
    # IFP question type
    
    q_type        0 = regular binomial or multinomial
                  1 = cIFP, Answer Option 1 
                  2 = cIFP, Answer Option 2
                  3 = cIFP, Answer Option 3
                  4 = cIFP, Answer Option 4
                  5 = cIFP, Answer Option 5
                  6 = Ordered Multinomial

### `q_type`, not filtered

Update, now we are not filtering on q\_type.

``` r
 
filtered_data$q_type %>% summary()
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>  0.0000  0.0000  0.0000  0.2841  0.0000  4.0000
```

### `n_opts` is 2

And that it is binomial, not multinomial.

``` r

filtered_data$n_opts %>% summary()
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>       2       2       2       2       2       2
```

## `q_status` is closed

Check we don’t have any voided questions.

``` r
 
filtered_data$q_status %>% table()
#> .
#>  closed 
#> 1659422
```

## `outcome`

Now, I’m not sure about this. Here’s what I have so far.

There is an `outcome` variable in the ifps.csv file.

``` r
 
questions$outcome %>% str() 
#>  chr [1:617] "b" "b" "b" "b" "a" "b" "b" "a" "c" "b" "b" "b" "b" "c" ...
```

## wide by time

We need to flag which ones are first and last, for each user.

``` r
filtered_times <- filtered_data %>% 
  group_by(ifp_id, user_id, outcome) %>% 
  summarise(min_time = min(timestamp),
            max_time = max(timestamp)) %>% 
  gather(key = terminal, value = timestamp, min_time, max_time) %>% 
  left_join(filtered_data) %>% 
    select(ifp_id, user_id, outcome, q_conditional, value, terminal) 
#> Joining, by = c("ifp_id", "user_id", "outcome", "timestamp")

filtered_times %>% 
  count(ifp_id, user_id, outcome)
#> # A tibble: 323,833 x 4
#> # Groups:   ifp_id, user_id [323,833]
#>    ifp_id user_id outcome     n
#>    <chr>    <dbl> <chr>   <int>
#>  1 1001-0       3 b           4
#>  2 1001-0       6 b           4
#>  3 1001-0      15 b           4
#>  4 1001-0      19 b           4
#>  5 1001-0      23 b           4
#>  6 1001-0      25 b           4
#>  7 1001-0      33 b           4
#>  8 1001-0      35 b           4
#>  9 1001-0      36 b           4
#> 10 1001-0      41 b           4
#> # … with 323,823 more rows
```

``` r

# this doesn't run 
filtered_times %>% 
  group_by(ifp_id, user_id, outcome) %>% 
  spread(key = terminal, value = value)
 
```

# output data

``` r
# wrangle into desired format
output_data <-  
  filtered_times %>% 
  mutate(
    q_conditional = as.numeric(q_conditional),
    outcome = if_else(outcome == "a", 1, 0)
  ) %>% 
  select(
    userId = user_id,
    questionId = ifp_id,
    estimated_probability_of_Output1 = value,
    outcome = outcome,
    cond_question = q_conditional
  )

# take a look
output_data %>% head()
#> # A tibble: 6 x 5
#> # Groups:   questionId, userId [3]
#>   userId questionId estimated_probability_of_Output1 outcome cond_question
#>    <dbl> <chr>                                 <dbl>   <dbl>         <dbl>
#> 1      3 1001-0                                 0.5        0             1
#> 2      3 1001-0                                 0.5        0             1
#> 3      6 1001-0                                 0.4        0             1
#> 4      6 1001-0                                 0.6        0             1
#> 5     15 1001-0                                 0.25       0             1
#> 6     15 1001-0                                 0.75       0             1
```

You can download a .csv of these data
[here](https://github.com/softloud/gjp/blob/master/forecast.csv).

``` r

write_csv(output_data, "forecast.csv")
```


<!-- README.md is generated from README.Rmd. Please edit that file -->

# gjp

<!-- badges: start -->

<!-- badges: end -->

``` r
 
# packages used in this analysis
library(tidyverse, quietly = TRUE)
#> ── Attaching packages ─────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──
#> ✔ ggplot2 3.2.1     ✔ purrr   0.3.2
#> ✔ tibble  2.1.3     ✔ dplyr   0.8.3
#> ✔ tidyr   0.8.3     ✔ stringr 1.4.0
#> ✔ readr   1.3.1     ✔ forcats 0.4.0
#> ── Conflicts ────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
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
        fcast_type,
        answer_option,
        training
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
        q_conditional = q_type == 0 & n_opts == 2
    ) 


# join together
output_var <- 
    inner_join(questions_var, fcasts_var, by = "ifp_id") %>% 
    mutate(answer_correct = answer_option == outcome)

# take a look
output_var %>% skimr::skim()
#> Skim summary statistics
#>  n obs: 3143460 
#>  n variables: 12 
#> 
#> ── Variable type:character ─────────────────────────────────────────────────────────────────────────────────────
#>       variable missing complete       n min max empty n_unique
#>  answer_option       0  3143460 3143460   1   1     0        5
#>         ifp_id       0  3143460 3143460   6   6     0      614
#>        outcome  359417  2784043 3143460   1   1     0        5
#>       q_status       0  3143460 3143460   6   6     0        3
#>       training       0  3143460 3143460   1   1     0       13
#> 
#> ── Variable type:logical ───────────────────────────────────────────────────────────────────────────────────────
#>        variable missing complete       n mean
#>  answer_correct  359417  2784043 3143460 0.4 
#>   q_conditional       0  3143460 3143460 0.46
#>                                   count
#>  FAL: 1663893, TRU: 1120150, NA: 359417
#>       FAL: 1685804, TRU: 1457656, NA: 0
#> 
#> ── Variable type:numeric ───────────────────────────────────────────────────────────────────────────────────────
#>    variable missing complete       n     mean       sd p0     p25    p50
#>  fcast_type       0  3143460 3143460     0.99     0.72  0    1       1  
#>      n_opts       0  3143460 3143460     2.76     1.08  2    2       2  
#>      q_type       0  3143460 3143460     1.94     2.61  0    0       0  
#>     user_id      43  3143417 3143460 39555.06 53749.65  3 3926    9068  
#>       value       0  3143460 3143460     0.41     0.37  0    0.05    0.3
#>        p75   p100     hist
#>       1         4 ▃▇▁▂▁▁▁▁
#>       4         5 ▇▁▁▁▁▂▁▂
#>       6         6 ▇▁▁▁▁▁▁▅
#>  123238    182001 ▇▁▁▁▁▂▁▁
#>       0.79      1 ▇▃▂▂▁▂▂▅
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
#>  n obs: 1403866 
#>  n variables: 12 
#> 
#> ── Variable type:character ─────────────────────────────────────────────────────────────────────────────────────
#>       variable missing complete       n min max empty n_unique
#>  answer_option       0  1403866 1403866   1   1     0        2
#>         ifp_id       0  1403866 1403866   6   6     0      303
#>        outcome       0  1403866 1403866   1   1     0        2
#>       q_status       0  1403866 1403866   6   6     0        1
#>       training       0  1403866 1403866   1   1     0       13
#> 
#> ── Variable type:logical ───────────────────────────────────────────────────────────────────────────────────────
#>        variable missing complete       n mean
#>  answer_correct       0  1403866 1403866  0.5
#>   q_conditional       0  1403866 1403866  1  
#>                            count
#>  FAL: 701933, TRU: 701933, NA: 0
#>              TRU: 1403866, NA: 0
#> 
#> ── Variable type:numeric ───────────────────────────────────────────────────────────────────────────────────────
#>    variable missing complete       n     mean       sd p0     p25    p50
#>  fcast_type       0  1403866 1403866     0.94     0.72  0    0       1  
#>      n_opts       0  1403866 1403866     2        0     2    2       2  
#>      q_type       0  1403866 1403866     0        0     0    0       0  
#>     user_id       0  1403866 1403866 40539.4  54691.28  3 3581    9002  
#>       value       0  1403866 1403866     0.5      0.36  0    0.15    0.5
#>        p75   p100     hist
#>       1         4 ▃▇▁▂▁▁▁▁
#>       2         2 ▁▁▁▇▁▁▁▁
#>       0         0 ▁▁▁▇▁▁▁▁
#>  123985    182001 ▇▁▁▁▁▂▁▁
#>       0.85      1 ▇▅▂▃▂▃▃▇
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

### `q_type` is all 0

Makes sure it’s categorical.

``` r
 
filtered_data$q_type %>% summary()
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>       0       0       0       0       0       0
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
#> 1403866
```

## `outcome`

Now, I’m not sure about this. Here’s what I have so far.

There is an `outcome` variable in the ifps.csv file.

``` r
 
questions$outcome %>% str() 
#>  chr [1:617] "b" "b" "b" "b" "a" "b" "b" "a" "c" "b" "b" "b" "b" "c" ...
```

And there are two variables in the forecasts data that have similar
results.

I haven’t been able to find documentation on these variables:
`answer_option` and `training`. But we can take a look at the matchings.

``` r
filtered_data$answer_option %>% str()
#>  chr [1:1403866] "a" "b" "a" "b" "a" "b" "a" "b" "a" "b" "a" "b" "a" ...
filtered_data$training %>% str()
#>  chr [1:1403866] "a" "a" "a" "a" "a" "a" "a" "a" "a" "a" "a" "a" "a" ...
```

We can also take a look at the combinations of outcome with these
variables.

``` r
filtered_data %>% count(outcome, answer_option)
#> # A tibble: 4 x 3
#>   outcome answer_option      n
#>   <chr>   <chr>          <int>
#> 1 a       a             157963
#> 2 a       b             157963
#> 3 b       a             543970
#> 4 b       b             543970
filtered_data %>% count(outcome, training)
#> # A tibble: 26 x 3
#>    outcome training     n
#>    <chr>   <chr>    <int>
#>  1 a       a        49792
#>  2 a       b        87040
#>  3 a       c        18330
#>  4 a       d        21176
#>  5 a       h        12406
#>  6 a       n         2904
#>  7 a       p        13062
#>  8 a       q         1488
#>  9 a       r        32842
#> 10 a       s        28516
#> # … with 16 more rows
```

I don’t like the look of either of these, frankly. Anca, can you shed
any light?

## wide by time

Now this is the tricky one.

    from variables.txt
    
    fcast_type    0 = new, first forecast on an IFP by a user
                  1 = update, subsequent forecast by a user
                  2 = affirm, update to a forecast with no change in value
                  4 = withdraw (probabilities show last standing, individual scoring stops after this date)

Am I correct in the understanding, you would like the `value` of the
user’s first and last input?

Do you think we can use `fcast_type`, or do I need to do something more
clever with the time stamps?

# output data

``` r
# wrangle into desired format
output_data <-  
  filtered_data %>% 
  mutate(
    answer_correct = as.numeric(answer_correct),
    q_conditional = as.numeric(q_conditional)
    
  ) %>% 
  select(
    userId = user_id,
    questionId = ifp_id,
    estimated_probability_ofOutput1 = value,
    outcome = answer_correct,
    cond_question = q_conditional
  )
```

``` r

write_csv(output_data, "forecast.csv")
```

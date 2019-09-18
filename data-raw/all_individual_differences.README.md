---
output: html_document
---
# Good Judgment Project
## Individual Differences Data
  
This file contains information about the individual differences data, including how the variables are named.

Generally, columns are named like this:

* scale _ item _ modifier _ year

Some basic naming conventions used include:

* score - total score for scale or test
* cor - 1 if correct, 0 if not
* rev - indicates column has been reversed
* yr1 - data from year 1 of GJP
* yr12 - data from years 1 and/or 2

For yes/no questions, 1 = yes and 0 = no.

For brevity, some columns are listed below without year tags. You can assume that coding is the same for all year tags unless otherwise specified.


### Identifiers

* __user_id____ - Unique User ID
* __userid_yr4____ - Unique User ID for year 4. Some users were reassigned user ids in year 4.

### Demographics

* __gender__ - gender. 0 = Male, 1 = Female
* __age__ - age from years 1-4, binned
* __ed_yr12__ - education from years 1-2.
	* 0 = No Bachelor's
	* 1 = Bachelor's
	* 2 = Master's
	* 3 = Doctorate
* __ed_yr3___ - "What is your highest level of education?" Coding same for yr4
	* 1 = Not a high school graduate
	* 2 = High school graduate or GED recipient
	* 3 = Associate degree (for example: AA, AS)
	* 4 = Bachelor's degree (for example: BA, AB, BS)
	* 5 = Master's degree
	* 6 = Professional degree or professional doctorate (for example, MD, 	DVM, JD, PsyD)
	* 7 = Other Doctorate degree (for example: PhD or EdD)
* __citizen___ - 1 = US citizen, 0 = non-citizen. Coding same for yr4
* __workhours__ - "How many hours do you work at your job in a typical week?".
	* 1 = 0-10 hours
	* 2 = 11-20 hours
	* 3 = 21-30 hours
	* 4 = 31-40 hours
	* 5 = 41-50 hours
	* 6 = 51-60 hours
	* 7 = more than 60 hours
* __tradeexp__ - "What is your level of experience with market trading?". 
	* 1 = No experience
	* 2 = Novice
	* 3 = Intermediate
	* 4 = Advanced 
	* 5 = Expert
* __tradeenjoy__ - "If you have had experience, do you like buying and selling shares in stock or prediction markets?". 
	* 0 = cannot say
	* 1 = Dislike Extremely
	* 2 = Dislike
	* 3 = Neither dislike nor like
	* 4 = Like
	* 5 = Like Extremely
* __newshrs__ - "How much time per week do you spend reading about international news and politics? Please estimate the number of hours (you can use decimals if you like)." 


### Raven's Advanced Progressive Matrices - Short Form (APM-SF)

* __raven_score__ - Number of correct items (max. 12)
* __raven_adjusted_score__ - In a few cases, some matrix images did not load. This adjusted score reflects the percentage correct on all visible items.
* __raven_1__ - Response to Raven's item 1
* __raven_1_cor__ - 1 if item 1 response was correct, 0 if incorrect
* __raven_1_time__ - time (in seconds) of page submit for Raven's item 1 in year 3 survey


### Extended Cognitive Reflection Test (by Jon Baron).

* __crt_score_yr12__ - Score on all CRT items (out of 7) for years 1-2.
* __crt_score_yr3__ - Score on all CRT items (out of 18) for year 3. 
* __crt_score_yr4__ - Score on all CRT items (out of 18) for year 4. 
* __crt_orig_score__ - Score on 3 original (Frederick, 2005) CRT items.
* __crt_imp_score__ - Number of intuitive/impulse responses on 3 original CRT items.
* __crt_seenbefore__ - "Have you seen the three questions immediately above before?" (about original Frederick items) 1 = yes, 0 = no.
* __crt_1_cor__ - 1 if response to CRT item 1 is correct, otherwise 0
* __crt_1_time__ - time (seconds) of page submit for item 1


_ECRT Items for Years 1 and 2_

* __crt_1_yr12____ - CRT Q1 response. "A bat and a ball cost $1.10 The bat costs $1 dollar more than the ball. How much does the ball cost?" (5 or .05)
* __crt_2_yr12____ - "If it takes 5 machines 5 minutes to make 5 widgets, how long would it take 100 machines to make 100 widgets?" (5)
* __crt_3_yr12____ - "In a lake, there is a patch of lily pads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how long would it take for the patch to cover half of the lake?" (47)

* __crt_4_yr12____ - "All flowers have petals. Roses have petals. If these two statements are true can we conclude that roses are flowers?" yes=1, no=2. (no)
* __crt_5_yr12____ - "Sally is making sun tea. Every hour, the concentration of the tea doubles. If it takes 6 hours for the tea to be ready, how long would it take for  the tea to reach half of the final concentration? (Enter the number of hours as a numeral)" (5)
* __crt_6_yr12____ - "In a box, no green things are round, and all round things are large. What can we conclude?" 1="No green things are large." 2="Some green things are not large." 3="We cannot conclude anything about green and large things." (3)
* __crt_7_yr12____ - "All things that have a motor need oil. Automobiles need oil. If these two statements are true, can we conclude from them that automobiles have a motor?" 1=yes, 2=no. (no)


_ECRT Items for Years 3 and 4_

* __crt_1_yr3__ - Response to CRT item 1, "A bat and a ball cost $1.10 in total. The bat costs a dollar more than the ball. How many cents does the ball cost? (Do not use any decimals or any symbols or letters.)" (5)
* __crt_2_yr3__ - "If it takes 5 machines 5 minutes to make 5 widgets, how many minutes would it take 100 machines to make 100 widgets? (Enter the number of minutes)" (5)
* __crt_3_yr3__ - "In a lake, there is a patch of lily pads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how many days would it take for the patch to cover half of the lake? (Enter the number of days)" (47)
* __crt_4_yr3__ - "All cats are furry. Rabbits are furry. If these two statements are true, can we conclude from them that rabbits are cats?" (no / 2)
* __crt_5_yr3__ - "All mammals walk. Whales are mammals. If these two statements are true, can we conclude from them that whales walk?" (yes / 1)
* __crt_6_yr3__ - "All fish are swimmers. Some Olympic athletes are swimmers. If these two statements are true, can we conclude from them that some Olympic athletes are fish?" (no / 2)
* __crt_7_yr3__ - "All flowers have petals. Roses have petals. If these two statements are true, can we conclude from them that roses are flowers?" (no / 2)
* __crt_8_yr3__ - "All things that have a motor need oil. Automobiles need oil. If these two statements are true, can we conclude from them that automobiles have a motor?" (no / 2)
* __crt_9_yr3__ - "All living things need water. Roses need water. If these two statements are true, can we conclude from them that roses are living things?" (no / 2)
* __crt_10_yr3__ - "All vehicles have wheels. Boats are vehicles. If these two statements are true, can we conclude from them that boats have wheels?" (yes / 1)
* __crt_11_yr3__ - "All things that are smoked are good for the health. Cigarettes are smoked. If these two statements are true, can we conclude from them that cigarettes are good for the health?" (yes / 1)
* __crt_12_yr3__ - "All bears are ferocious. Some stuffed animals are bears. If these two statements are true, can we conclude from them that some stuffed animals are ferocious?" (yes / 1)
* __crt_13_yr3__ - "All wives are married. Some women are married. If these two statements are true, can we conclude from them that some women are wives?" (no / 2)
* __crt_14_yr3__ - "If animals need vitamin Q, can we conclude that oysters need vitamin Q?" (yes / 1)
* __crt_15_yr3__ - "If oxygen in the air is poisonous to animals, can we conclude that oxygen in the air is poisonous to dogs?" (yes / 1)
* __crt_16_yr3__ - "If it takes 2 nurses 2 minutes to measure the blood of 2 patients, how many minutes would it take 200 nurses to measure the blood of 200 patients? (Enter the number of minutes)" (2)
* __crt_17_yr3__ - "Soup and salad cost $5.50 in total. The soup costs a dollar more than the salad. How much does the salad cost (in dollars, without a dollar sign)?" (2.25)
* __crt_18_yr3__ - "Sally is making sun tea. Every hour, the concentration of the tea doubles. If it takes 6 hours for the tea to be ready, how long would it take for the tea to reach half of the final concentration? (Enter the number of hours)" (5)


### Numeracy

* __numeracy_score_yr12____ - sum of correct answers to Numeracy questions (0-3)
* __numeracy_1_yr12____ - Numeracy Q1 response. "The chance of getting a viral infection is .0005. Out of 10,000 people, about how many of them are expected to get infected? (5)
* __numeracy_2_yr12____ - Numeracy Q2 response. "Imagine you are in a class, and your chances of being asked a question are 1% during the first week and double each week thereafter (i.e. a 2% chance in Week 2, a 4% chance in Week 3, an 8% chance in Week 4). What are the chances you will be asked a question in Week 7? (Enter a number between 0 and 100 to indicate the percentage) (64)
* __numeracy_3_yr12____ - Numeracy Q3 response. "Imagine an area where 1 out of every 10,000 doctors is infected with a virus. Individuals differ in the risk of infections. In a group of high risk individuals, 20 out of every 100 people are also infected. A test for the virus gives a positive result in 99% of those who are infected and in 1% of those who are not infected. A randomly selected doctor and a randomly selected individual from the high risk group test positive for the disease. Who is more likely to actually have the disease?" (High Risk Individuals)
* __numeracy_1_cor_yr12____ - 1 if response to Numeracy item 1 is correct, otherwise 0

### Berlin Numeracy (yr3 & yr4)

This test is administered and scored in an adaptive format. Each item is intended to be a median split of those viewing it. If one correctly answers item 1, they view item 2b (else 2a). If one correctly answers 2b, their score is 4/4 (else they get item 3). If one correctly answers item 3, their score is 4/4 (else 3/4). If one correctly answers item 2a, their score is 2/4 (else 1/4).

* __numeracy_score_yr3__ - score (out of 4) on Berlin Numeracy in year 3.
* __numeracy_1_yr3__ - Response to Berlin Numeracy item 1, "Out of 1,000 people in a small town 500 are members of a choir. Out of these 500 members in the choir 100 are men. Out of the 500 inhabitants that are not in the choir 300 are men. What is the probability that a randomly drawn man is a member of the choir? Please indicate the probability as a decimal between 0 and 1 (0=0%, .5=50%, 1=100%)" (0.25)
* __numeracy_2a_yr3__ - "Imagine we are throwing a five-sided die 50 times. On average, out of these 50 throws how many times would this five-sided die show an odd number (1, 3, or 5)?" (30)
* __numeracy_2b_yr3__ - "Imagine we are throwing a loaded die (6 sides). The probability that the die shows a 6 is twice as high as the probability of each of the other numbers. On average, out of 70 throws how many times would the die show the number 6?" (20)
* __numeracy_3_yr3__ - "In a forest 20% of mushrooms are red, 50% brown and 30% white. A red mushroom is poisonous with a probability of 20%. A mushroom that is not red is poisonous with a probability of 5%. What is the probability that a poisonous mushroom in the forest is red? Please indicate the probability as a decimal between 0 and 1." (0.5)


### Shipley-2 Abstraction

This test was given to all forecasters in the year 3 survey. It comprises 25 items and asks for one character per text box to complete the sequence (of numbers, words, or letters). Responses were timed in blocks of 5 items.

* __shipa_score_yr3__ - Score (out of 25) on Shipley-2 Abstraction
* __shipa_1_1_yr3__ - text entered in item 1 (first number), box 1 (second number)
* __shipa_1_cor_yr3__ - 1 if answer to item 1 is correct
* __shipa_time_1_yr3__ - Timestamp (in seconds) of page submit for first block of 5 items (1-5).
* __shipa_time_6_yr3__ - Timestamp (in seconds) of page submit for second block of 5 items (6-10). Pattern continues


### Shipley-2 Vocabulary

This test was given to all forecasters in the year 3 survey. It comprises 40 multiple choice items where participants select the most similar word to the target word. Responses were timed in blocks of 5 items.

* __shipv_score_yr3__ - Score (out of 40) on Shipley-2 Vocabulary.
* __shipv_1_yr3__ - Response to item 1 (multiple choice, 1-4).
* __shipv_time_1_yr3__ - Timestamp (in seconds) of page submit for first block of 5 items (1-5).
* __shipv_time_6_yr3__ - Timestamp (in seconds) of page submit for second block of 5 items (6-10). Pattern continues


### Political Knowledge - True/False

* __pk_score__ - Number of correct items
* __pk_numincor__ - Number of incorrect answers
* __pk_sumconf__ - Sum of confidence points (.5,.6,.7,.8,.9, 1)
* __pk_sumconfcor__ - Sum of confidence points for correct answers
* __pk_sumconfincor__ - Sum of confidence points for incorrect answers
* __pk_calib__ - Calibration score
* __pk_discrim__ - Discrimination score
* __pk_1_cor__ - 1 if item 1 correct, 0 if incorrect
* __pk_1_conf__ confidence (.5,.6,.7,.8,.9, 1) judgment for item 1
* __pk_1_time__ - time (in seconds) of page submit for answer to item 1
* __pk_1_conf_time__- time (in seconds) of page submit for confidence judgment for item 1

* __pk_score_china_yr3__ - China (general) cluster score, out of 5. Includes items 1, 2, 3, 28, 29.
* __pk_score_iran_yr3__ - Iran cluster score, out of 4. Includes items 4, 5, 6, 7.
* __pk_score_mideast_yr3__ - Middle East cluster score, out of 9. Includes items 15, 16, 17, 18, 19, 20, 21, 22, 55.
* __pk_score_sasia_yr3__ - South Asia cluster score, out of 8. Includes items 41, 42, 43, 44, 45, 46, 47, 38.
* __pk_score_eurozone_yr3__ - Eurozone cluster score, out of 2. Includes items 12, 48.
* __pk_score_russia_yr3__ - Russia cluster score, out of 2. Includes items 39, 40.
* __pk_score_globgov_yr3__ - Global Governance cluster score, out of 3. Includes items 24, 34, 49.
* __pk_score_latinam_yr3__ - Latin America cluster score, out of 3. Includes items 36, 37, 52.
* __pk_score_nkorea_yr3__ - North Korea cluster score, out of 3. Includes items 8, 9, 10.
* __pk_score_africa_yr3__ - Sub-Saharan Africa cluster score, out of 4. Includes items 31, 32, 33, 35.
* __pk_score_globecon_yr3__ - Global Economy cluster score, out of 9. Includes items 11, 13, 23, 25, 30, 53, 27, 4, 14.

_Year 1 Items and Answers_ (35 items)

1. The leadership of Saudi Arabia, like that of Iran, embraces the Shiite branch of Islam. [F.]

2. Pakistan has a majority Hindu population. [F]

3. The Japanese economy has registered GDP growth rates between eight and 12% for the last 15 years. [F]

4. The International Monetary Fund has had to lend Greece many billions of dollars in the last year to prevent a debt default. [T]

5. The United Kingdom never adopted the euro as its currency. [T]

6. Azerbaijan and Armenia have formally settled their border dispute. [F]

7. Turkey currently has a military-dominated government. [F]

8. As of July, 2011, Japan has the second-largest economy (measured by GDP) in the world. [F]

9. Israel has yet to sign a formal peace treaty with an Arab nation. [F]

10. There have historically been deep divisions in Iraq between the Sunni and Shiite populations. [T]

11. Vietnam and China have yet to resolve their disagreements over oil and mineral rights in the South China Sea. [T]

12. Canada elected a majority conservative government in 2011. [T]

13.  The country providing the most natural gas to the European Union is Russia?  [T]

14. The population of Russia exceeds 300 million. [F]

15. The Brazilian economy has registered GDP growth rates between -3% and +3% over the last 10 years. [F]

16. The United States is a signatory to the Nuclear Non-proliferation Treaty. [T]

17. Norway is a major oil-producing country. [T]

18. As of July, 2011, the price of a barrel of Brent crude oil has never exceeded $300. [T]

19. United States runs a large trade surplus vis-a-vis China. [F]

20. There have historically been deep divisions in Nigeria between the Christian south and the Muslim north. [T]

21. Myanmar has a military dominated government. [T]

22. The International Monetary Fund has had to lend France many billions of dollars in the last year to prevent a debt default. [F]

24. Iceland is not a signatory to the treaty known as NAFTA (North American Free Trade Agreement). [T]

23. Zimbabwe is currently the last remaining African country to be under the control of a white-minority government. [F]

25. The Middle East Quartet promoting the peace process includes the United States, the United Kingdom, France, and the United Nations?  [F] 

26. Russia is one of the so-called BRICs.  [T] 

27. NASDAQ began as the world's first electronic stock market.  [T]

28. Vietnam is a member state in the Shanghai Cooperation Organization? [F]

29. Hamas is a Palestinian political-military movement that currently controls Gaza. [T]

30. Nelson Mandela is the President of South Africa. [F]

31. The International Atomic Energy Commission has concluded that Iran is not on the technological path toward developing nuclear weapons.  [F]

32. Pakistan is a nuclear power. [T]

33. The World Trade Organization views agricultural subsidies as a major problem in moving forward with trade liberalization. [T]

34. The United Kingdom currently has a majority Conservative Party government.  [F]

35. There has been virtually zero economic growth in India over the last 10 years. [F]


_Year 2 Items and Answers_ (50 items)

1. The current agreements underpinning the World Trade Organization (WTO) are the outcome of the Uruguay Round negotiations that revised the GATT. [T]

2. Germany is a permanent member of the UN Security Council. [F]

3. ASEAN successfully managed the Cambodia-Thailand border dispute in 2011, avoiding bloodshed. [F]

4. Nahdlatul Ulama or NU, Indonesia's largest traditionalist Islamic organization, supports an Islamic state. [F]

5. Switzerland is a member of the European Union. [F]

6. Kenya moved forces into Jubaland in Southern Somalia in October 2011. [T]

7. Jose Eduardo dos Santos recently took power in Angola promising a break from the past rule of the People's Movement for the Liberation of Angola (also known as the MPLA). [F]

8. Japan and South Korea dispute sovereignty over the Dokdo islands. [T]

9. Since democratization, the Indonesian economy has grown faster than it did during the Suharto dictatorship. [F]

10. Colombia borders five countries (Ecuador, Panama, Venezuela, Brazil, and Peru), but the epicenter of its long-standing armed conflict is in the periphery bordering Ecuador and Venezuela. [T]

11. Goodluck Jonathan's victory in the 2011 Nigeria election was a significant change because he was the first person from the North to win in ten years. [F]

12. The European Union accounts for 75% of the Foreign Direct Investment in Russia. [T]

13. Spain has evolved over the last 50 years from one of the most centralized to one of the most decentralized states in Europe. [T]

14. The International Court of Justice found in 2010 that Kosovo's declaration of independence violated international law. [F]

15. In the dispute over Kashmir, Pakistan controls Jammu and India controls Azad Kashmir. [F]

16. The International Atomic Energy Commission has concluded that Iran is not on the technological path toward developing nuclear weapons. [F]

17. Pakistan is a nuclear power. [T]

18. The World Trade Organization views agricultural subsidies as a major problem in moving forward with trade liberalization. [T]

19. Vietnam is a member state in the Shanghai Cooperation Organization. [F]

20. Hamas is a Palestinian political-military movement that currently controls Gaza. [T]

21. The United Progressive Alliance in India is built around the BJP (Bharatiya Janata Party). [F]

22. Nelson Mandela is the President of South Africa. [F]

23. Zimbabwe is currently the last remaining African country to be under the control of a white-minority government. [F]

24. NASDAQ began as the world's first electronic stock market. [T]

25. Iceland is not a signatory to the treaty known as NAFTA (North American Free Trade Agreement). [T]

26. The International Monetary Fund has had to lend Finland many billions of dollars in the last year to prevent a debt default. [F]

27. Laos is a communist single-party socialist republic. [T]

28. The United States is a signatory to the Nuclear Non-proliferation Treaty. [T]

29. There have historically been deep divisions in Nigeria between the Christian south and the Muslim north. [T]

30. Russia is one of the so-called BRICs. [T]

31. Norway is a major oil-producing country. [T]

32. As of August 2012, the price of a barrel of Brent crude oil has never exceeded $200. [T]

33. The country providing the most natural gas to the European Union is Russia. [T]

34. The population of Russia exceeds 300 million. [F]

35. The Brazilian economy has registered GDP growth rates between -3% and +3% over the last 10 years. [F]

36. The Three Gorges Dam, a massive construction project begun in 1994, is located on the Yangzi River. [T]

37. Vietnam and China have yet to resolve their disagreements over oil and mineral rights in the South China Sea. [T]

38. There have historically been deep divisions in Iraq between the Sunni and Shiite populations. [T]

39. The dominant ethnicity/race in China is the Han. [T]

40. Canada elected a majority conservative government in 2011. [T]

41. Turkey currently has a military-dominated government. [F]

42. The United Kingdom never adopted the Euro as its currency. [T]

43. Azerbaijan and Armenia have formally settled their border dispute. [F]

44. As of August 2012, Japan has the second-largest economy (measured by GDP) in the world. [F]

45. The leadership of Saudi Arabia, like that of Iran, embraces the Shiite branch of Islam. [F]

46. Pakistan has a majority Hindu population. [F]

47. Israel has yet to sign a formal peace treaty with an Arab nation. [F]

48. India's liberalization reforms now allow for 100% Foreign Direct Investment (FDI) stake in ventures. [T]

49. The GINI coefficient measures the rate of economic expansion. [F]

50. Anatoly Sobchak was an early adversary of Vladimir Putin. [F]


_Year 3 Items and Answers_ (55 items)

1. Japan, China and South Korea dispute sovereignty over the Senkaku Islands. (False)

2. Xi Jinping is the Premier of the People's Republic of China. (False)

3. There are reportedly about 311 million members of the Chinese Communist Party. (False)

4. Iran has ended its territorial dispute with the United Arab Emirates concerning three islands in the Persian Gulf. (False)

5. Mahmoud Ahmadinejad has been the Chair of the Non-Aligned Movement since 2012. (True)

6. The nuclear power plant at Bushehr, Iran that opened in September 2011 was built with mostly North Korean assistance. (False)

7. Supreme Leader in Iran, the Vilayat-e Faqih, is selected by the Assembly of Experts. (True)

8. North Korea has successfully launched a satellite into orbit. (True)

9. North Korea is a party to the Nuclear Non-Proliferation Treaty. (False)

10. Kaesong was established to facilitate better ties between North Korea and South Korea through economic relations. (True)

11. Since 2008, the International Monetary Fund has loaned funds to Angola, Tunisia, and Albania to combat the effects of the global economic crisis. (True)

12. The United Kingdom is the only European Union member state that has not adopted the Euro as its currency. (False)

13. No country currently uses the gold standard as the basis of its monetary system. (True)

14. In January 2013, Japan announced measures that were expected to devalue its currency, creating concern of a possible currency war. (True)

15. Egypt was the first country to experience regime change during the Arab Spring. (False)

16. Naftali Bennet has agreed Israel should withdraw from most of the West Bank and recognize a Palestinian State as part of the peace process. (False)

17. Salman bin Abdulaziz is the Crown Prince in Saudi Arabia. (True)

18. 30 women now sit on the Shura Council, which advises Saudi Arabia's king. (True)

19. Nouri al-Maliki is the secretary general of the Islamic Dawa Party. (True)

20. Muqtada al-Sadr is well known for advocating the division of Iraq into sectarian mini-states. (False)

21. Yair Lapid advocates that Orthodox Jews in Israel should receive more favorable social support and continued exemptions from the military. (False)

22. Thousands of people converged in the streets of Tunisia for the funeral of assassinated opposition politician Chokri Belaid. (True)

23. Trade between India and the member states of ASEAN (the Association of Southeast Asian Nations) grew at over 22 percent annually during the 2005-2011 period. (True)

24. Japan has agreed to drop tariffs on key agricultural products in exchange for being admitted to the Trans Pacific Partnership talks. (False)

25. Singapore receives the best possible credit rating (AAA) from Standard & Poor's. (True)

26. In 2012, China imported more oil than did the United States. (True)

27. Both China and Mexico are among the top 10 oil-producing countries in the world. (True)

28. China has the world's largest economy as determined by GDP. (False)

29. China's nominal GDP growth rate was above 15% in 2011. (False)

30. Brazil recorded the lowest GDP growth rate in South America during 2011. (True)

31. According to The World Bank, in 2010 less than 50% of people in Nigeria lived on less than $1.25 per day. (False)

32. President Francois Boizize was ousted out of office of the President of Central African Republican in March 2013 by the Seleka rebel alliance. (True)

33. The Tutsi in Rwanda have traditionally been the poor underclass in the country. (False)

34. The UN Security Council voted unanimously in March 2013 to end part of a 21-year-old arms embargo on Somalia. (True)

35. Ghana was the first country in sub-Saharan Africa to gain independence from the United Kingdom's colonial rule. (True)

36. Cuba helped to organize negotiations between the government of Colombia and FARC (Spanish acronym), the Revolutionary Armed Forces of Colombia. (True)

37. The German government has explicitly supported political changes initiated by Bolivia's President Evo Morales. (True)

38. The Istanbul Process refers to region-led dialogues and meetings started in late 2011 that focus on encouraging security, political, and economic cooperation among 
Turkey and its neighbors. (False)

39. The European Union accounts for 75% of the Foreign Direct Investment in Russia. (True)

40. Anatoly Sobchak was an early adversary of Vladimir Putin. (False)

41. Pakistan has the world's largest population of Muslims. (False)

42. The Afghanistan-Pakistan Transit Trade Agreement allows India to export goods to Afghanistan but does not allow Afghanistan to export goods to India. (False)

43. India's liberalization reforms now allow for 100% Foreign Direct Investment stake in ventures. (True)

44. The United Progressive Alliance in India is built around the BJP (Bharatiya Janata Party). (False)

45. The Pakistan People's Party has widespread support in Sindh. (True)

46. Syed Abul Ala Maududi is widely seen as the founder of the Jamaat-E-Islami. (True)

47. In the dispute over Kashmir, Pakistan controls Jammu and India controls Azad Kashmir. (False)

48. In 2010, the Italian political parties Futuro e Liberta (Future and Freedom) and Il Popolo Della Liberta (The People of Freedom) merged to form a united conservative party. (False)

49. Germany is a signatory to the Treaty on the Non-Proliferation of Nuclear Weapons. (False)

50. The Moro Islamic Liberation Front and the government of the Philippines signed a peace deal in 2012. (True)

51. The Liberal Democratic Party has controlled the Japanese government for the majority of the years since World War II. (True)

52. Jose Ramon Machado Ventura is the head of the Cuban Communist Party. (False)

53. If Chinese economic growth were to slow dramatically, the Australian dollar would most likely increase in value.  (False)

54. The Conservative Party currently controls the government of Canada. (True0

55. Iraq has a majority Shia population. (True)


### Political Knowledge - Multiple Choice

This test comprises 15 multiple choice questions asked in years 3 and 4.

* __pkmc_score__ - Score (out of 15) on year 3 multiple choice political knowledge test
* __pkmc_1__ - Response (1-4) to multiple choice item 1
* __pkmc_1_time__ - time (in seconds) of answer to item 1

_Items and Answers_

1. Was the North Atlantic Treaty Organization primarily formed as 
	1. A military security alliance (correct)
	2. A tariff-free trade zone
	3. An economic development union
	4. A Maritime & Fishing Agreement

2. Who is the Secretary General of the United Nations?
	1. Javier Solana
	2. George Mitchell
	3. Ban Ki-moon (correct)
	4. Dominique de Villepin

3. What country did Kosovo seek independence from?
	1. Russia
	2. Serbia (correct)
	3. Turkey
	4. Greece

4. The name of the organization founded by the Rome Statute that is often referred to as the ICC is 
	1. The International Computing Convention
	2. The Italian Commerce Corporation
	3. The International Criminal Court (correct)
	4. The International Commercial Court

5. In which of the following countries does the majority of the population follow Shi?۪a Islam?
	1. Saudi Arabia
	2. Egypt
	3. Pakistan
	4. Iran (correct)

6. Which of the following countries is NOT a permanent member of the UN Security Council?
	1. United Kingdom
	2. Germany (correct)
	3. China
	4. Russian Federation

7. Who is the Chief Justice of the Supreme Court?
	1. Antonin Scalia
	2. John Roberts Jr. (correct)
	3. Ruth Bader Ginsberg
	4. Stephen Breyer

8. To overturn a presidential veto what percentage of the Congress needs to vote to do so?
	1. 51% of the Senate
	2. 60% of the House
	3. 66% of the Senate and House (correct)
	4. 75% of the Senate and House

9. Who is the Speaker of the House of Representatives?
	1. John Boehner (correct)
	2. Eric Cantor
	3. Mitch McConnell
	4. Harry Reid

10. What sort of vote is needed to ratify a treaty that is signed by the president of the United States?
	1. 66% of the House
	2. 66% of the Senate (correct)
	3. 66% of the House and Senate
	4. 75% of the House and Senate

11. How many Federal Reserve Districts are there in the Federal Reserve system?
	1. 6
	2. 12 (correct)
	3. 20
	4. 50

12. Which of the following positions does not require Senate confirmation?
	1. The Secretary of Commerce
	2. The Chairman of the Federal Reserve Board
	3. The National Security Advisor (correct)
	4. The US Permanent Representative to the United Nations

13. Which one of the following North African nations has not experienced a revolutionary overthrow of its government in the last five years?
	1. Egypt
	2. Tunisia
	3. Libya
	4. Algeria (correct)

14. The current president of France (Hollande) is linked to which political party?
	1. The Socialists (correct)
	2. The Gaullists
	3. The National Front
	4. United Europe

15. OPEC stands for:
	1. Organization for Pacific Economic Cooperation
	2. Organization of Petroleum Exporting Countries (correct)
	3. Organization for Palestinian Energy Conservation
	4. Organization for Preventing Ecological Collapse
	
### Cluster Political Knowledge

This multiple choice test is intended to measure political knowledge in 4 clusters: China, global economy, Iran, and Russia.

* __cpk_score__: total score out of 32 
* __cpk_score_china__: total score on China questions, out of 8 
* __cpk_score_globecon__: total score on Global economy questions, out of 8 
* __cpk_score_iran__: total score on Iran questions, out of 8 
* __cpk_score_russia__: total score on Russia questions, out of 8 
* __cpk_1__: choice for item 1. 1:a, 2:b, 3:c, 4:d 
* __cpk_correct_1__: 1 if item 1 correct 
* __cpktime_1__: timestamp (in seconds) of page submit on item 1 
* __cpkconf_1__: "What is the probability that your correct?", item 1. Ranges from 25 to 100 

_Items and Answers_ 

_China_ 

1. Who is the President and General Secretary of the Communist Party of China? 
       1. Hu Jintao 
       2. Li Keqiang
       3. Xi Jinping (correct)
       4. Li Yuanchao 
2. China has been increasing the size of its navy. How many aircraft carriers does it now have available? 
       1. One (correct) 
       2. Five
       3. Ten
       4. Fifteen 
3. China's GDP, according to World Bank data through 2012, is: 
       1. The largest in the world
       2. The second largest in the world (correct)
       3. The third largest in the world
       4. The fourth largest in the world 
4. In 2013, there were political tensions between China and Japan. In that year, how did total trade in goods and services between Japan and China fare? 
       1. Trade declined slightly (< 1%) 
       2. Trade declined noticeably (> 4%)(correct) 
       3. Trade increased slightly (< 1%) 
       4. Trade increased noticeably (> 4%) 
5. From 1921-1940 Taiwan was under the control of: 
       1. China
       2. Japan (correct)
       3. Great Britain
       4. France 
6. Which of the following countries is not a member of the Shanghai Cooperation Organization? 
       1. China 
       2. Philippines (correct)
       3. Russia
       4. Uzbekistan 
7. In the past few years, Vietnamese nationalism has lead Hanoi to: 
       1. Cooperate with China to jointly control islands claimed by Japan
       2. Stay out of the Association of Southeast Asian Nations (ASEAN)
       3. Confront China over islands claimed by both China and Vietnam (correct) 
       4. Refuse to normalize diplomatic relations with the United States 
8. Xi Jinping has recently announced that China?s policy in response to provocation can best be thought of as: 
       1. Accommodative regionalism
       2. Reactive assertiveness (correct)
       3. Peaceful harmonization
       4. Communist solidarity 
       
_Global Economy_ 

9. Who is the president of the World Bank? 
       1. Jim Yong Kim (correct) 
       2. Christine Lagarde
       3. Janet Yellen
       4. Ban Ki Moon 
10. OECD stands for 
       1. Organization for European Common Defense, 
       2. Organization for Ecological Conservation and Development, 
       3. Organization for Economic Cooperation and Development (correct) 
       4. Organization for Energy Conservation and Distribution 
11. The rate of inflation in the Euro area during 2012-2014 was:
 	1. Less than 2% (correct) 
       2. More than 2% but less than 4% 
       3. More than 4% but less than 6% 
       4. More than 6% [NOTE: This should have asked about 2012-13 or 2013-14, or specified that we meant an average rate of inflation over both years. The average rate was less than 2%, so (a) is technically correct. However, the rate was above 2% for most of 2012 and below 2% for most of 2013.] 
12. Where does the International Monetary Fund get its money? 
       1. From the commercial banks that are members 
       2. From taxes levied on international trade
       3. From the quotas assigned to its member countries (correct) 
       4. From the United Nations Development Program 
13. The average Brent Crude oil price from 2012-2014 has been: 
       1. Less than $75 per barrel
       2. More than $75 but less than $125 per barrel
       3. More than $125 but less than $175 per barrel (correct)
       4. More than $175 per barrel 
14. Which of the following is NOT a principle of the World Trade Organization? 
       1. Countries should enjoy most favored nation (MFN) status
       2. Imported and locally produced goods should be treated equally once in the market, 
       3. Freer trade should be achieved through negotiation
       4. Customs duties and tariffs cannot be charged on imported goods (correct)
15. From 2009-2013, which of the following countries had the smallest growth in GDP? 
       1. Brazil
       2. China
       3. India
       4. Russia (correct) 
16. What does FATCA stand for? 
       1. Federally Administered Tax Compliance Act
       2. Foreign Agency for Treasuries & Commodities Administration
       3. Federal Agency for Trade & Commodities Administration
       4. Foreign Account Tax Compliance Act (correct)
       
_Iran_ 

17. Who is the supreme leader of Iran? 
       1. Ayatollah Hashemi Rafsanjani
       2. Ayatollah Ali Khamenei (correct)
       3. Ayatollah Abu al-Qasim al-Khoei
       4. Ayatollah Mahmoud Taleghani 
18. Iranian President Hassan Rouhani spent the twenty years before becoming president in which sector of Iranian life? 
       1. Banking and commerce
       2. Oil and petro-chemicals
       3. Religious and clerical
       4. Law and diplomacy (correct) 
19. The Basij in Iran is generally seen as:
       1. Supportive of the regime (correct) 
       2. Opposing the regime, 
       3. A remnant of the Shah's wealthy class, 
       4. An upper-middle class movement on university campuses 
20. Which of the following countries has the largest population? 
       1. Saudi Arabia
       2. Syria
       3. Iran (correct)
       4. Iraq
21. Iran's Shahab-3 missile is a virtual copy of: 
       1. A U.S. Aim-9 Sidewinder
       2. A French Exocet 
       3. A North Korean Rodong (correct) 
       4. A Russian SS-18 Satan 
22. The nuclear plant at Bushehr, Iran, that opened in September 2011 was built with the help of mostly: 
       1. North Korea
       2. Pakistan
       3. China
       4. Russia (correct)
23. Which country is not part of the P5+1 that has negotiated the interim nuclear deal with Iran? 
       1. Italy (correct)
       2. China, 
       3. France, 
       4. Germany 
24. Iran provides military training, weapons, and financial support for what Shia militant group based in Lebanon? 
       1. Hezbollah (correct) 
       2. Hamas
       3. Al-Qaeda in the Arabian Peninsula
       4. Asbat an-Ansar 
       
_Russia_ 

25. In Russia, which is the party that is most closely associated with President Vladimir Putin? 
       1. The Communist Party of Russia
       2. The United Russia Party (correct)
       3. The Russian United Democratic Party
       4. The Political Party LDPR 
26. When Kosovo declared independence from Serbia in 2008, Russia: 
       1. Supported a common United Nations response
       2. Supported the Serbian government in Belgrade (correct) 
       3. Supported the Kosovo government in Pristina
       4. Supported the NATO policy toward Serbia 
27. Which of the following countries has the most nuclear warheads? 
       1. China
       2. India
       3. Pakistan
       4. Russia (correct)
28. The Molotov-Ribbentrop Pact led to the division of which of the following countries? 
       1. Poland
       2. Germany (correct) 
       3. Korea
       4. India 
29. How much of the natural gas consumed by Germany is supplied by Russia? 
       1. Less than 25%
       2. More than 25% but less than 50% (correct) 
       3. More than 50% but less than 75%
       4. More than 75% 
30. The New START treaty signed in 2010 limits: 
       1. Carbon emissions
       2. Immigration to European Union states
       3. Nuclear warheads and delivery vehicles (correct) 
       4. The international movement of money between banks 
31. Under President Putin, Russia has: 
       1. Not allowed Gazprom to cooperate with China?s CNPC, 
       2. Held joint military exercises with China in the East China Sea (correct) 
       3. Prevented Central Asian states from opening any oil pipelines to China
       4. Stopped military sales and shared energy exploration with Vietnam 
32. Which country is not a member of the Eurasian Economic Union? 
       1. Russia, 
       2. Belarus, 
       3. Moldova (correct) 
       4. Kazakhstan?
	
### General Political Knowledge

 This 15-item multiple choice tests includes a general set of questions about world politics asked in Year 4.
 
* __gpk_score__: total score out of 15 
* __gpk_1__: choice for item 1. 1:a, 2:b, 3:c, 4:d 
* __gpk_correct_1__: 1 if item 1 correct 
* __gpktime_1__: timestamp (in seconds) of page submit on item 1 
4. Timor-Leste 
* __gpkconf_1__: "What is the probability that your correct?", item 1. Ranges from 25 to 100 

_Items and Answers_

1. The newest member state of the United Nations is: 
       1. Montenegro
       2. Kosovo
       3. South Sudan (correct)
       
2. The current secretary of the United States Treasury is: 
       1. Timothy Geithner 
       2. Jacob Lew (correct) 
       3. Ben Bernanke 
       4. Henry Paulson 
3. OSCE stands for:
       1. Office of the Security Council in Europe, 
       2. Organization for Security and Conflict Education, 
       3. Office for Security and Co-operation in Economics, 
       4. Organization for Security and Cooperation in Europe (correct)
4. Brazil?s current president, Dilma Rousseff, is associated with which party? 
       1. Brazilian Social Democracy Party (PSDB)
       2. Workers Party (PT) (correct)
       3. Democrats Party (DEMS) 
       4. Brazilian Democratic Movement Party (PMDB) 
5. Which country will assume the chairmanship of the Arctic Council in 2015? 
       1. Canada 
       2. United States (correct)
       3. Sweden 
       4. Russia 
6. What do the Geneva Conventions regulate?. 
       1. Global financial flows
       2. Global carbon emissions
       3. International humanitarian law during wartime (correct)
       4. Convention on the law of the seas 
7. Which country has the world?s largest Muslim population? 
       1. Iraq
       2. Saudi Arabia
       3. India
       4. Indonesia (correct)
8. Who is the incoming president of Ukraine? 
       1. Petro Poroshenko (correct)
       2. Viktor Yanukovich, 
       3. Oleksandr Turchynov, 
       4. Yulia Tymoshenko 
9. According to the United States constitution, who has the power to declare war? 
       1. President
       2. Congress (correct)
       3. National Security Council
       4. Joint Chiefs of Staff 
10. Who is the U.S. National Security Adviser? 
       1. Samantha Power
       2. Condoleezza Rice
       3. Susan Rice (correct)
       4. Harry Reid 
11. The African Union is composed of how many member states? 
       1. 12
       2. 25
       3. 54 (correct) 
       4. 70 
12. Who is the Prime Minister of Japan? 
       1. Yoshihiko Noda
       2. Shinzo Abe (correct)
       3. Emperor Akihito
       4. Naoto Kan 
13. Which will allow the value of a currency to fluctuate according to the foreign exchange market? 
       1. fixed exchange rate
       2. floating exchange rate (correct)
       3. linked exchange rate
       4. futures exchange rate 
14. Which country is currently seeking NATO membership? 
       1. Turkey
       2. Georgia (correct)
       3. Afghanistan
       4. Spain 
15. Which accord determines a nations exclusive economic zones around its coastal borders? 
       1. The Lisbon Treaty
       2. United Nations Convention on the Rights of Persons with Disabilities
       3. The Rome Treaty
       4. United Nations Convention on the Law of the Sea (correct)?
       
       


### Motivation

Time contribution question: "If the forecasting tournament seems fun, how much time per week could you see yourself contributing 4 months from now?"

* __timecontrib_least_yr3__ - "What is the least amount of time you see yourself contributing in a typical week?" (text entry, minutes)
* __timecontrib_avg_yr3__ - "What is the average amount of time you see yourself contributing in a typical week?" (text entry, minutes)
* __timecontrib_most_yr3__ - "What is the mostamount of time you see yourself contributing in a typical week?"

Motivation question: Why did you choose to participate in the forecasting tournament? Likert scale from 1 = Completely Disagree to 7 = Completely Agree.

* __motiv_improv_yr3__ - "Because I want to improve my judgment skills"
* __motiv_interest_yr3__ - "Because I am interested in world affairs"
* __motiv_compet_yr3__ - "Because I like to participate in competitions"
* __motiv_top_yr3__ - "Because I want to be among the top forecasters"
* __motiv_protectus_yr3__ - "Because accurate forecasts can help protect the United States.
* __motiv_protectworld_yr3__ - "Because accurate forecasts can help protect the world.


### Fox - Hedgehog

* __foxhedge_single__ - "In a famous essay, Isaiah Berlin classified thinkers as hedgehogs and foxes: The hedgehog knows one big thing and tries to explain as much as possible using that theory or conceptual framework. The fox knows many small things and is content to improvise explanations on a case-by-case basis.      When it comes to making predictions, would you describe yourself as more of a hedgehog or more of a fox?"
	* 1 = Very Much More Fox-Like
	* 2 = Somewhat More Fox-Like
	* 3 = Equally Fox and Hedgehog
	* 4 = Somewhat More Hedgehog-Like
	* 5 = Very Much More Hedgehog-Like
* __foxhedge_score_yr12__ - average of Fox Hedgehog Scale items. Higher scores = hedgehog
* __foxhedge_1_yr12__ - response for Hedgehog Fox scale, item 1. Lower scores indicate endorsement of Fox items, while higher scores indicate endorsement of Hedgehog. "I try to ground my thinking in robust and principles about how human beings behave and how society functions."
* __foxhedge_2_yr12__ - "When I ground my thinking in sound principles, I find that seemingly unpredictable phenomena often become predictable consequences of deeper principles."
* __foxhedge_3_yr12__ - "I often step outside my preferred framework and look at events from other perspectives."
* __foxhedge_3_rev_yr12__ - Fox Hedgehog scale item 3, reversed
* __foxhedge_4_yr12__ - "I see lots of exceptions and uncertainties in human affairs that make prediction extremely difficult."
* __foxhedge_4_rev_yr12__ - Fox Hedgehog scale item 4, reversed
* __foxhedge_5_yr12__ - "I do my best to cherry-pick good ideas wherever I can them?whether from the left, right or center."
* __foxhedge_5_rev_yr12__ - Fox Hedgehog scale item 5, reversed
* __foxhedge_6_yr12__ - "I see the need for a unifying framework that imposes order on an otherwise unmanageably complex world."
* __foxhedge_7_yr12__ - "People don't need to know me all that well to be able to predict my opinions on new issues."
* __foxhedge_8_yr12__ - "I avoid rushing to judgment in new situations."
* __foxhedge_8_rev_yr12__ - Fox Hedgehog scale item 8, reversed
* __foxhedge_9_yr12__ - "I can make more accurate forecasts when I pay less attention to the immediate headlines and more attention to basic principles proven by history to be true."
* __foxhedge_10_yr12__ - "It is amazing how often history repeats itself."


### Actively Open Minded Thinking

Items 1-7 were asked each year. Items 8 and 9 were added in year 3, and scores adjusted to reflect the average of all 9 items (or 7 for forecasters who dropped out before season 3)

* __aomt_score__ - Average of 9 AOMT items
* __aomt_1__ - "Allowing oneself to be convinced by an opposing argument is a sign of good character."
* __aomt_2__ - "People should take into consideration evidence that goes against their beliefs."
* __aomt_3__ - "People should revise their beliefs in response to new information or evidence."
* __aomt_4__ - "Changing your mind is a sign of weakness."
* __aomt_4_rev__ - item 4 reversed
* __aomt_5__ - "Intuition is the best guide in making decisions."
* __aomt_5_rev__ - item 5 reversed
* __aomt_6__ - "It is important to persevere in your beliefs even when evidence is brought to bear against them."
* __aomt_6_rev__ - item 6 reversed
* __aomt_7__ - "One should disregard evidence that conflicts with one's established beliefs."
* __aomt_7_rev__ - item 7 reversed
* __aomt_8__ - "People should search actively for reasons why their beliefs might be wrong." (New in year 3)
* __aomt_9__ - "It is more useful to pay attention to those who disagree with us than to pay attention to those who agree." (New in year 3)


### Cultural Worldview Scale (Dan Kahan)

This scale comprises 12 items rated for agreement using a 7-point Likert scale where 1 = Completely Disagree and 7 = Completely Agree. It is organized by 2 orthogonal factors (higher scored indicate named pole): Individualist (opposite pole Communitarian) and Hierarchy (Egalitarian). There are 3 reversed items per factor (6 total)

* __cultwv_ind_score__ - Average score on individualist items.
* __cultwv_hier_score__ - Average score on hierarchy items.
* __cultwv_ind_1__ - Response to item 1, individualism factor, "The government interferes far too much in our everyday lives."
* __cultwv_ind_2__ - "Sometimes government needs to make laws that keep people from hurting themselves." Needs reversed.
* __cultwv_ind_2_rev__ - Reversed response to item 2
* __cultwv_ind_3__ - "It's not the government's business to try to protect people from themselves."
* __cultwv_ind_4__ - "The government should stop telling people how to live their lives."
* __cultwv_ind_5__ - "The government should do more to advance society?۪s goals, even if that means limiting the freedom and choices of individuals." Needs reversed.
* __cultwv_ind_5_rev__ - Reversed response to item 5.
* __cultwv_ind_6__ - "Government should put limits on the choices individuals can make so they don?۪t get in the way of what?۪s good for society." Needs reversed.
* __cultwv_ind_6_rev__ - Reversed response to item 6.
* __cultwv_hier_7__ - Item 7, hierarchy factor, "We have gone too far in pushing equal rights in this country."
* __cultwv_hier_8__ - "Our society would be better off if the distribution of wealth was more equal." Needs reversed.
* __cultwv_hier_8_rev__ - Reversed response to item 8.
* __cultwv_hier_9__ - "We need to dramatically reduce inequalities between the rich and the poor, whites and people of color, and men and women." Needs reversed
* __cultwv_hier_9_rev__ - Reversed response to item 9.
* __cultwv_hier_10__ - "Discrimination against minorities is still a very serious problem in our society." Needs reversed.
* __cultwv_hier_10_rev__ - Reversed response to item 10.
* __cultwv_hier_11__ - "It seems like blacks, women, homosexuals, and other groups don't want equal rights, they want special rights just for them."
* __cultwv_hier_12__ - "Society as a whole has become too soft and feminine."


### Social Value Orientation (SVO) Slider

This 6-item task asks participants to select from 9 possible distributions of hypothetical resources between oneself and another person. It was given in year 3.

* __svo_1_yr3__ - Response to SVO Slider 1 (naming pattern is the same for other sliders)
* __svo_1_self_yr3__ - amount allocated to self for item 1
* __svo_1_other_yr3__ - amount allocated to other for item 1
* __svo_self_yr3__ - mean amount allocated to self for all 6 items
* __svo_other_yr3__ - mean amount allocated to other for all 6 items
* __svo_angle__ - SVO angle; arctangent of [ (mean allocated to other - 50) / (mean allocated to self - 50) ], then converted from radians to degrees
* __svo_category__ - Interpretation of SVO angle:
	* altruism = SVO > 51.15
	* prosociality = 22.45 < SVO < 51.15
	* individualism = -12.04 < SVO < 22.45
	* Competitiveness = SVO < -12.04


### Grit

Items are rated for agreement on a 1-7 Likert scale where 1 = Completely Disagree and 7 = Completely Agree.

* __grit_1_yr1__ - "Setbacks don't discourage me."
* __grit_2_yr1__ - "I often set a goal but later choose to pursue a different one."
* __grit_2_rev_yr1__ - GRIT item 2, reversed
* __grit_3_yr1__ - "I finish whatever I begin."
* __grit_score_yr1__ - average of GRIT items

* __grit_score_yr3__ - Score on short Grit scale (average of items)
* __grit_1_yr3__ - "I often set a goal but later choose to pursue a different one." Needs reversed. Note that it's the same item as __grit_2_yr1__
* __grit_1_rev_yr3__ - item 1 reversed (same item as __grit_2_rev_yr1__)
* __grit_2_yr3__ - "I have been obsessed with a certain idea or project for a short time but later lost interest." Needs reversed.
* __grit_2_rev_yr3__ - item 2 reversed
* __grit_3_yr3__ - "I have difficulty maintaining my focus on projects that take more than a few months to complete." Needs reversed.
* __grit_3_rev_yr3__ - item 3 reversed
* __grit_4_yr3__ - "New ideas and projects sometimes distract me from previous ones." Needs reversed.
* __grit_4_rev_yr3__ - item 4 reversed
* __grit_5_yr3__ - "I finish whatever I begin." Note that it's the same item as __grit_3_yr1__.
* __grit_6_yr3__ - "Setbacks don't discourage me." Note that it's the same item as __grit_1_yr1__.
* __grit_7_yr3__ - "I am diligent."
* __grit_8_yr3__ - "I am a hard worker."


### Extraversion

This scale comprises 8 items from the BFI-44, rated for agreement on a 1-7 Likert scale where 1 = Completely Disagree and 7 = Completely Agree.

* __extr_score_yr3__ - score on extraversion scale (average of items)
* __extr_1_yr3__ - Response to item 1, "I am someone who is talkative."
* __extr_2_yr3__ - "I am someone who is reserved." Needs reversed.
* __extr_2_rev_yr3__ - item 2 reversed
* __extr_3_yr3__ - "I am someone who is full of energy."
* __extr_4_yr3__ - "I am someone who generates a lot of enthusiasm."
* __extr_5_yr3__ - "I am someone who tends to be quiet." Needs reversed.
* __extr_5_rev_yr3__ - item 5 reversed
* __extr_6_yr3__ - "I am someone who has an assertive personality."
* __extr_7_yr3__ - "I am someone who is sometimes shy, inhibited." Needs reversed.
* __extr_7_rev_yr3__ - item 7 reversed
* __extr_8_yr3__ - "I am someone who is outgoing, sociable."


### Concientiousness

Items are rated for agreement on a 1-7 Likert scale where 1 = Completely Disagree and 7 = Completely Agree.

* __consc_score_yr12__ - average score for Conscientiousness
* __consc_1_yr12___ - response to Conscientiousness Q1. "I do a thorough job."(1-7)
* __consc_2_yr12___ - "I can be somewhat careless."
* __consc_2_rev_yr12____ - reversed response to Conscientiousness Q2
* __consc_3_yr12____ - "I am a reliable worker."
* __consc_4_yr12____ - "I tend to be disorganized."
* __consc_4_rev_yr12____ - Conscientiousness Q4 reversed
* __consc_5_yr12____ - "I tend to be lazy."
* __consc_5_rev_yr12____ - Conscientiousness Q5 reversed
* __consc_6_yr12____ - "I persevere until the task is finished."
* __consc_7_yr12__ - "I do things efficiently."
* __consc_8_yr12__ - "I make plans and follow through with them."
* __consc_9_yr12__ - "I am easily distracted."
* __consc_9_rev_yr12__ - Conscientiousness Q9 reversed


### Openness to Experience

Items are rated for agreement on a 1-7 Likert scale where 1 = Completely Disagree and 7 = Completely Agree.

* __open_score_yr12__ - average of Openness to Experience items
* __open_1_yr12__ - Openness to Experience scale, response to item 1. "I like to reflect on and play with ideas."
* __open_2_yr12__ - "I prefer work that is routine."
* __open_2_rev_yr12__ - Openness to Experience, item 2 reversed
* __open_3_yr12__ - "I value artistic and aesthetic experiences."
* __open_4_yr12__ - "I am inventive."
* __open_5_yr12__ - "I have an active imagination."
* __open_6_yr12__ - "I am an ingenious, deep thinker."
* __open_7_yr12__ - "I am curious about many different things."
* __open_8_yr12__ - "I am original and come up with new ideas."


### Need for Cognition

This scale comprises 18 items rated for agreement from 1 = Completely Disagree to 7 = Completely Agree

* __nfcog_score_yr12__ - average of Need for Cognition items
* __nfcog_1_yr12__ - response to item 1 of Need for Cognition. "I prefer complex to simple problems."
* __nfcog_2_yr12__ - "I like the responsibility of handling a situation that requires a lot of thinking."
* __nfcog_3_yr12__ - "Thinking is not my idea of fun."
* __nfcog_3_rev_yr12__ - Need for Cognition Q3 reversed
* __nfcog_4_yr12__ - "I would rather do something that requires little thought than something that is sure to challenge my thinking abilities."
* __nfcog_4_rev_yr12__ - Need for Cognition Q4 reversed
* __nfcog_5_yr12__ - "I try to anticipate and avoid situations where there is a likely chance I will have to think in depth about something."
* __nfcog_5_rev_yr12__ - Need for Cognition Q5 reversed
* __nfcog_6_yr12__ - "I find satisfaction in deliberating hard and or long hours."
* __nfcog_7_yr12__ - "I only think as hard as I have to."
* __nfcog_7_rev_yr12__ - Need for Cognition Q7 reversed
* __nfcog_8_yr12__ - "I prefer to think about small daily projects rather than long term ones."
* __nfcog_8_rev_yr12__ - Need for Cognition Q8 reversed
* __nfcog_9_yr12__ - "I like tasks that require little thought once I've learned them."
* __nfcog_9_rev_yr12__ - Need for Cognition Q9 reversed
* __nfcog_10_yr12__ - "The idea of relying on thought to make my way to the top appeals to me."
* __nfcog_11_yr12__ - "I really enjoy a task that involves coming up with new solutions to problems."
* __nfcog_12_yr12__ - "Learning new ways to think doesn't excite me very much."
* __nfcog_12_rev_yr12__ - Need for Cognition Q12 reversed
* __nfcog_13_yr12__ - "I prefer my life to be filled with puzzles that I must solve."
* __nfcog_14_yr12__ - "The notion of thinking abstractly is appealing to me."
* __nfcog_15_yr12__ - "I would prefer a task that is intellectual, difficult, and important to one that is somewhat important but does not require much thought."
* __nfcog_16_yr12__ - "I feel relief rather than satisfaction after completing a task that requires a lot of mental effort."
* __nfcog_16_rev_yr12__ - Need for Cognition Q16 reversed
* __nfcog_17_yr12__ - "It's enough for me that something gets the job done; I don't care how or why it works."
* __nfcog_17_rev_yr12__ - Need for Cognition Q17 reversed
* __nfcog_18_yr12__ - "I usually end up deliberating about issues even when they do not affect me personally."


### Need for Closure

This scale comprises 11 items rated for agreement from 1 = Completely Agree to 7 = Completely Disagree.

* __nfclo_1_yr1__ - Need for Closure, item 1. "Even after I have made up my mind about something, I am always eager to consider a different opinion."
* __nfclo_1_rev_yr1__ - Need for Closure item 1 reversed
* __nfclo_2_yr1__ - "I can usually see how both parties in a conflict can believe they are right."
* __nfclo_2_rev_yr1__ - Need for Closure item 2 reversed
* __nfclo_3_yr1__ - "It is annoying to listen to someone who cannot seem to make up his or her mind."
* __nfclo_4_yr1__ - "I prefer interacting with people whose opinions are very different from my own."
* __nfclo_4_rev_yr1__ - Need for Closure item 4 reversed
* __nfclo_5_yr1__ - "An expert who does not come up with a definite answer probably does not know much."
* __nfclo_6_yr1__ - "I dislike uncertainty."
* __nfclo_7_yr1__ - "When faced with a problem, I usually see the best solution very rapidly."
* __nfclo_8_yr1__ - "I find it easy to change my mind in response to unexpected events."
* __nfclo_8_rev_yr1__ - Need for Closure item 8 reversed
* __nfclo_9_yr1__ - "I am skeptical that there are absolute scientific truths."
* __nfclo_9_rev_yr1__ - Need for Closure item 9 reversed
* __nfclo_10_yr1__ - "I prefer tried and proven approaches."
* __nfclo_11_yr1__ - "I enjoy thinking about why I believe the things I do." 
* __nfclo_11_rev_yr1__ - Need for Closure item 11 reversed
* __nfclo_score_yr1__ - sum of need for closure items


### Working Memory 

This set of questions asks participants to solve a multi-step math problem and memorize a word in under ten seconds. After viewing all 6 items, participants are asked to recall the 6 words. 

* __memory_both_score__: total score out of 12; 1 point earned if math question and word recall are both correct for a given item 
* __memory_math_score__: total score out of 6 on math questions 
* __memory_word_score__: total score out of 6 on word recall 
* __memory_1_math__: response to math item 1 (1=yes, 2=no) 
* __memory_math_correct_1__: 1 if correctly answered math item 1 
* __memory_word_correct_1__: 1 if correctly recalled item 1 word
* __memory_1_word__: recall of item 1 word_ 
* __memory_1_math__: IS (5 X 3) + 4 = 17? (2 / no)
* __memory_2_math__: IS (6 X 2) - 3 = 8? (2 / no)
* __memory_3_math__: IS (4 X 4) - 4 = 12? (1 / yes)
* __memory_4_math__: IS (3 X 7) + 6 = 27? (1 / yes)
* __memory_5_math__: IS (4 X 8) - 2 = 31? (2 / no)
* __memory_6_math__: IS (9 X 2) + 6 = 24? (1 / yes)
* __memory_1_word__: BOOK
* __memory_2_word__: HOUSE
* __memory_3_word__: JACKET
* __memory_4_word__: CAT
* __memory_5_word__: PEN
* __memory_6_word__: WATER

### Self-Rated Math Ability

* __fractions_yr12___ - self-rated ability "Working with fractions" (1-7)
* __percentages_yr12___ - self-rated ability "Working with percentages" (1-7)
* __tips_yr12___ - self-rated ability "Calculating a 15% tip" (1-7)
* __discounts_yr12___ - self-rated ability "Figuring out how much a shirt will cost if it is 25% off" (1-7)

### Forecasting Mindset

* __fcpractice_yr12___ - "Forecasting skills depend mostly on practice, training and careful analysis of the underlying causes of previous failures and successes." (1-7, Completely Disagree:Completely Agree)
* __fcability_yr12___ - "Forecasting skills depend mostly on innate ability that people either have or don?t have." (1-7, Completely Disagree:Completely Agree)
* __fcluck_yr12___ - "Forecasting skills depend mostly on luck (coincidences in which hunches and preconceptions just happen to correspond to reality for a stretch of time)." (1-7, Completely Disagree:Completely Agree)
* __fcmotivation_yr12___ - "I am committed to devoting a great deal of time and effort to improving my forecasting skills even if initial results are discouraging." (1-7, Completely Disagree:Completely Agree)


### Political Philosophies

Items are rated for agreement on a 1-7 Likert scale where 1 = Completely Disagree and 7 = Completely Agree.

* __realism_yr12__ - "World politics remains a jungle in which (to quote Thucydides) the strong do what they will and the weak accept what they must."(1-7)
* __institut_yr12__ - "International institutions increasingly constrain the conduct of nation-states."
* __ecodoom_yr12__ - "Economic and population growth are stretching nature to its breaking point."
* __boom_yr12__ - "Just when humanity seems to be stretching resources to their limits, humans are ingenious at inventing cost-effective technological fixes that permit economic growth to continue."
* __realism_2_yr12__ - "The rise of China to superpower status will inevitably entail sharp conflicts with the United States."
* __boom_2_yr12__ - "The rise of radical Islam will be short lived, and pragmatic forces will prevail in contested areas."
* __antiecodoom_yr12__ - "I doubt that global climate change modelers know as much about climate trends as they claim."
* __antiinstitut_yr12__ - "European monetary integration should be scaled back sharply."
* __lib_1_yr12__ - "On political and economic issues, I am more liberal than conservative."
* __lib_2_yr12__ - "Government should routinely intervene in the economy to achieve fairer outcomes."
* __conserv_yr12__ - "Free markets function well with minimal government intervention."
* __boom_score_yr12__ - average of boom and boom2
* __lib_score_yr12__ - average of lib.resp1 and lib.resp2
* __swing_yr12__ - "I would rather be wrong in an interesting way than right in an uninteresting way."
* __libcon__: "Generally speaking, I think of myself as 1: Staunch Liberal to 7: Staunch Conservative"?


### Maximizing vs. Satisficing

* __max_satis_1_yr2__ - Maximization scale, satisficing item 1. "All decisions have pros and cons."
* __max_search_1_yr2__ - Maximization scale, alternative search item 1. "I cannot come to a decision unless I have carefully considered all my options."
* __max_diff_1_yr2__ - Maximization scale, decision difficulty item 1. "I do not agonize over decisions."
* __max_search_2_yr2__ - "I take the time to consider all alternatives before making a decision."
* __max_diff_2_yr2__ - "I find myself often faced with difficult decisions."
* __max_satis_2_yr2__ - "I cannot possibly know everything before making a decision."
* __max_search_3_yr2__ - "I just won't make a decision until I am comfortable with the process."
* __max_diff_3_yr2__ - "I often change my mind several times before making a decision."
* __max_satis_score_yr2__ - average of satisficing items
* __max_diff_score_yr2__ - average of decision difficulty items
* __max_search_score_yr2__ - average of alternative search items


### Analytical / Intuitive (Nygren and White)

This scale comprises 10 items organized by 2 factors (analytical and intuitive thinking) and rated for agreement from 1 = Completely Disagree and 7 = Completely Agree.

* __analytic_1_yr2__ - analytical/intuitive cognitive style, analytical item 1. "I feel that if I plan my decisions carefully I will make good decisions."
* __analytic_2_yr2__ - "Before I make a decision, I like to figure out the most efficient way of studying it."
* __analytic_3_yr2__ - "I'm very rational when it comes to evaluating risky options."
* __analytic_4_yr2__ - "In making decisions I try to examine the importance of the good and bad points of each alternative."
* __analytic_5_yr2__ - "I generally rely on careful reasoning in making up my mind."
* __intuit_1_yr2__ - analytical/intuitive cognitive style, intuitive item 1. "I can get a good feeling for most decision situations very quickly."
* __intuit_2_yr2__ - "I think that relying on one?s gut feelings is a sound decision making principle."
* __intuit_3_yr2__ - "My first reaction to a decision situation usually turns out to be the best one."
* __intuit_4_yr2__ - "I make my best choices when I have to make quick, instinctive decisions."
* __intuit_5_yr2__ - "I let my intuition play a big part in most decisions I make."
* __analytic_score_yr2__ - average of analytical cognitive style items
* __intuit_score_yr2__ - average of intuitive cognitive style items


### Financial Risk Decisions, Perception, Preferences

"Please indicate the likelihood that you would engage in the described activity or behavior if you were to find yourself in that situation." 1=extremely unlikely, 7=extremely likely.

* __risk_dec_1_yr2__ - Financial Risk scale, decision item 1.  "Investing 10% of your annual income in a moderate growth mutual fund."
* __risk_dec_2_yr2__ - "Betting a day?s income at a high-stake poker game."
* __risk_dec_3_yr2__ - "Investing 5% of your annual income in a very speculative stock."
* __risk_dec_4_yr2__ - "Betting a day's income on the outcome of a sporting event."
* __risk_dec_5_yr2__ - "Investing 10% of your annual income in a new business venture."

"People often see some risk in situations that contain uncertainty about what  the outcome or consequences will be and for which there is the  possibility of negative consequences. However, riskiness is a very  personal and intuitive notion, and we are interested in your gut level  assessment of risk. For each of the  following statements, please indicate how risky you perceive each  situation. Provide a rating on a scale from 1 to 7 (where 1 =Not at all Risky, 2 = Slightly Risky, 3 = Somewhat Risky, 4 = Moderately Risky, 5 =  Risky, 6= Very Risky, 7 = Extremely Risky)."

* __risk_percept_1_yr2__ - "Investing 10% of your annual income in a moderate growth mutual fund."
* __risk_percept_2_yr2__ - "Betting a day?s income at a high-stake poker game."
* __risk_percept_3_yr2__ - "Investing 5% of your annual income in a very speculative stock."
* __risk_percept_4_yr2__ - "Betting a day's income on the outcome of a sporting event."
* __risk_percept_5_yr2__ - "Investing 10% of your annual income in a new business venture."


###Financial Literacy 

* __finance_score__: total score out of 5 
* __finance_1__: response to item 1 
* __finance_correct_1__: 1 if correctly answered item 1 Items (correct answers in bold) 

_Items and Answers_

1. Suppose you have $100 in a savings account earning 2 percent interest a year. After five years, how much would you have? 
       1. More than $102 (correct)
       2. Exactly $102
       3. Less than $102
       4. Don't know 
2. Imagine that the interest rate on your savings account is 1 percent a year and inflation is 2 percent a year. After one year, would the money in the account buy more than it does today, exactly the same or less than today? 
       1. More
       2. Same
       3. Less (correct)
       4. Don't know 
3. If interest rates rise, what will typically happen to bond prices? Rise, fall, stay the same, or is there no relationship? 
       1. Rise
       2. Fall (correct)
       3. Stay the same
       4. No relationship
       5. Don't know 
4. True or false: A 15-year mortgage typically requires higher monthly payments than a 30-year mortgage but the total interest payment over the life of the loan will be less. 
       1. True (correct)
       2. False
       3. Don't know 
5. True or false: Buying a single company's stock usually provides a safer return than a stock mutual fund. 
       1. True
       2. False (correct)
       3. Don't know?


### P-Beauty Contests 

These game-theoretic items ask participants to estimate a number that is a function of the set of all participants' estimates. Each item has a Nash equilibrium (either 0 or 100) from which an error score was calculated. 

_Items and Answers_

1. "Choose a number between 0 and 100 that is as close as possible to 2 times the average (mean) of all numbers chosen by other participants for this question." Nash equilibrium is 100. 
2. "Choose a number between 0 and 100 that is as close as possible to 2/3 times the average (mean) of all numbers chosen by other participants for this question." Nash equilibrium is 0. 
3. "Choose a number between 0 and 100 that is as close as possible to 4/3 times the average (mean) of all numbers chosen by other participants for this question." Nash equilibrium is 100. 
4. "Choose a number between 0 and 100 that is as close as possible to 0.7 times the average (mean) of all numbers chosen by other participants for this question." Nash equilibrium is 0.

### Helping

These items were suggested by Shefali Patil; From Grant and Sumanth (2009)
Response scale is 1=Strongly Disagree to 7=Strongly Agree

* __helping_score__: average (scale from 1 to 7) of 5 questions 
* __helping_1__: response to item 1 

_Items_

1. I get energized by working on tasks that have the potential to benefit others. 
2. It is important to me to have the opportunity to use my abilities to benefit others. 
3. I prefer to work on tasks that allow me to have a positive impact on others. 
4. I do my best when I'm working on a task that contributes to the well-being of others. 
5. I like to work on tasks that have the potential to benefit others.?

### Organizational Commitment (Meyer and Allen, 1984)

* __orgcommit_score__: average of items (1 to 7 scale, strongly disagree to strongly agree) 
* __orgcommit_1__: response to item 1 

_Items_

1. I really feel as if GJP's problems are my own. 
2. I feel a strong sense of belonging to GJP. 
3. I feel emotionally attached to GJP. 
4. I feel like a part of the family at GJP. 
5. GJP has a great deal of personal meaning for me.?

### Intrinsic, Extrinsic, Prosocial Motivation - Rioux and Penner (2001) and Tierney, Farmer, and Graen (1999).

* __motivation.intrinsic.score__: intrinsic motivation score as average of items 1, 4, 6. 
* __motivation.prosocial.score__: prosocial motivation score as average of items 2, 5, 7, 8. 
* __motivation.extrinsic.score__: extrinsic motivation score. Same as item 3.

_Items_

Why are you motivated to participate in this forecasting tournament? 

1. Because I enjoy forecasting itself. 
2. Because I find forecasting engaging. 
3. Because it's fun. 
4. Because I care about benefiting others through forecasting. 
5. Because I want to help others through forecasting. 
6. Because I want to have positive impact on others. 
7. Because it is important to me to do good for others through forecasting. 
8. Because I need to earn money.

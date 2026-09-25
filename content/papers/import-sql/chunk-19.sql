begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The basic economic problem is:

A. scarcity  
B. inflation  
C. unemployment  
D. taxation  

---

**Q2.** The next best alternative forgone when a choice is made is the:

A. opportunity cost  
B. marginal cost  
C. fixed cost  
D. sunk cost  

---

**Q3.** The factors of production are land, labour, capital, and:

A. enterprise  
B. goods  
C. money  
D. services  

---

**Q4.** The reward for labour is:

A. wages  
B. interest  
C. profit  
D. rent  

---

**Q5.** The reward for capital is:

A. interest  
B. profit  
C. wages  
D. rent  

---

**Q6.** The reward for land is:

A. rent  
B. profit  
C. interest  
D. wages  

---

**Q7.** The reward for enterprise is:

A. wages  
B. profit  
C. rent  
D. interest  

---

**Q8.** The law of demand states that as price rises, quantity demanded:

A. rises  
B. falls  
C. doubles  
D. stays constant  

---

**Q9.** The law of supply states that as price rises, quantity supplied:

A. falls  
B. stays constant  
C. rises  
D. halves  

---

**Q10.** The price at which quantity demanded equals quantity supplied is the:

A. ceiling price  
B. floor price  
C. market price  
D. equilibrium price  

---

**Q11.** If a 10% price rise causes a 20% fall in quantity demanded, demand is:

A. inelastic  
B. perfectly inelastic  
C. elastic  
D. unit elastic  

---

**Q12.** If a 10% price rise causes a 5% fall in quantity demanded, demand is:

A. elastic  
B. perfectly elastic  
C. unit elastic  
D. inelastic  

---

**Q13.** The price elasticity of demand is calculated as:

A. change in price ÷ change in quantity  
B. % change in quantity demanded ÷ % change in price  
C. % change in price ÷ % change in quantity demanded  
D. quantity ÷ price  

---

**Q14.** A good whose demand rises when income rises is a:

A. substitute good  
B. normal good  
C. complementary good  
D. inferior good  

---

**Q15.** A good whose demand falls when income rises is an:

A. luxury good  
B. normal good  
C. inferior good  
D. necessity  

---

**Q16.** The law of diminishing returns applies in the:

A. very long run  
B. long run  
C. market period  
D. short run  

---

**Q17.** Costs that do not change with output are:

A. marginal costs  
B. total costs  
C. fixed costs  
D. variable costs  

---

**Q18.** Costs that change with output are:

A. sunk costs  
B. overhead costs  
C. fixed costs  
D. variable costs  

---

**Q19.** The extra cost of producing one more unit is the:

A. total cost  
B. marginal cost  
C. average cost  
D. fixed cost  

---

**Q20.** A market with many buyers and sellers of identical products is:

A. monopolistic competition  
B. perfect competition  
C. oligopoly  
D. monopoly  

---

**Q21.** A market with a single seller is a:

A. duopoly  
B. perfect competition  
C. monopoly  
D. oligopoly  

---

**Q22.** A market with a few large sellers is an:

A. monopolistic competition  
B. monopoly  
C. perfect competition  
D. oligopoly  

---

**Q23.** A market with many sellers of differentiated products is:

A. oligopoly  
B. monopoly  
C. monopolistic competition  
D. perfect competition  

---

**Q24.** A firm in perfect competition is a:

A. oligopolist  
B. monopolist  
C. price maker  
D. price taker  

---

**Q25.** A monopolist is a:

A. price maker  
B. price taker  
C. price follower  
D. price cutter  

---

**Q26.** The reduction in average cost as output increases is called:

A. economies of scale  
B. diseconomies of scale  
C. increasing returns  
D. diminishing returns  

---

**Q27.** The increase in average cost when a firm becomes too large is called:

A. diseconomies of scale  
B. diminishing returns  
C. economies of scale  
D. constant returns  

---

**Q28.** A maximum price set by the government is a:

A. price ceiling  
B. equilibrium price  
C. market price  
D. price floor  

---

**Q29.** A minimum price set by the government is a:

A. price floor  
B. market price  
C. price ceiling  
D. equilibrium price  

---

**Q30.** The benefit consumers gain when they pay less than they are willing to pay is:

A. consumer surplus  
B. revenue  
C. profit  
D. producer surplus  

---

**Q31.** The total value of goods and services produced in a country in a year is the:

A. national debt  
B. national income  
C. balance of trade  
D. money supply  

---

**Q32.** GDP stands for:

A. Gross Domestic Profit  
B. Gross Domestic Product  
C. Gross Development Plan  
D. General Domestic Product  

---

**Q33.** GNP stands for:

A. Gross National Profit  
B. General National Product  
C. Gross National Product  
D. Gross Net Product  

---

**Q34.** The three methods of measuring national income are income, output, and:

A. savings  
B. investment  
C. taxation  
D. expenditure  

---

**Q35.** Anything generally accepted as a medium of exchange is:

A. goods  
B. credit  
C. money  
D. services  

---

**Q36.** The total amount of money in circulation is the:

A. national income  
B. public debt  
C. balance of payments  
D. money supply  

---

**Q37.** The bank that controls the money supply is the:

A. development bank  
B. central bank  
C. commercial bank  
D. merchant bank  

---

**Q38.** The bank that accepts deposits and gives loans is a:

A. stock exchange  
B. commercial bank  
C. insurance company  
D. central bank  

---

**Q39.** A general and sustained rise in the price level is:

A. recession  
B. deflation  
C. inflation  
D. depression  

---

**Q40.** Inflation caused by excess demand is called:

A. hyperinflation  
B. cost-push inflation  
C. stagflation  
D. demand-pull inflation  

---

**Q41.** Inflation caused by rising costs of production is called:

A. hyperinflation  
B. deflation  
C. cost-push inflation  
D. demand-pull inflation  

---

**Q42.** The situation where people who are able and willing to work cannot find jobs is:

A. deflation  
B. recession  
C. inflation  
D. unemployment  

---

**Q43.** Trade between countries is called:

A. retail trade  
B. international trade  
C. home trade  
D. local trade  

---

**Q44.** The principle that a country should specialise in producing goods it produces most efficiently is:

A. economies of scale  
B. comparative advantage  
C. opportunity cost  
D. absolute advantage  

---

**Q45.** The difference between the value of exports and imports is the:

A. public debt  
B. balance of payments  
C. balance of trade  
D. national income  

---

**Q46.** A tax on imported goods is a:

A. grant  
B. quota  
C. subsidy  
D. tariff  

---

**Q47.** A limit on the quantity of a good that can be imported is a:

A. embargo  
B. subsidy  
C. quota  
D. tariff  

---

**Q48.** Taxes on income and profits are:

A. quotas  
B. tariffs  
C. indirect taxes  
D. direct taxes  

---

**Q49.** Taxes on goods and services are:

A. indirect taxes  
B. direct taxes  
C. income taxes  
D. profit taxes  

---

**Q50.** A plan of government revenue and expenditure is the:

A. budget  
B. balance sheet  
C. receipt  
D. invoice  

---

**Q51.** A budget where revenue equals expenditure is:

A. balanced  
B. deficit  
C. surplus  
D. unbalanced  

---

**Q52.** A budget where revenue exceeds expenditure is:

A. surplus  
B. balanced  
C. unbalanced  
D. deficit  

---

**Q53.** A budget where expenditure exceeds revenue is:

A. deficit  
B. unbalanced  
C. surplus  
D. balanced  

---

**Q54.** The increase in a country''s output of goods and services over time is:

A. economic growth  
B. recession  
C. inflation  
D. economic development  

---

**Q55.** The improvement in the standard of living and welfare of people is:

A. economic growth  
B. economic development  
C. inflation  
D. deflation  

---

**Q56.** The index that measures human welfare is the:

A. Consumer Price Index  
B. Human Development Index  
C. Price Index  
D. Stock Index  

---

**Q57.** Investment by foreign companies in a country is called:

A. portfolio investment  
B. public investment  
C. foreign direct investment  
D. domestic investment  

---

**Q58.** The international organisation that provides loans to countries in balance of payments difficulties is the:

A. World Bank  
B. WTO  
C. UN  
D. IMF  

---

**Q59.** The international organisation that finances development projects is the:

A. IMF  
B. UN  
C. World Bank  
D. WTO  

---

**Q60.** The economic community of Central African states is:

A. ECOWAS  
B. COMESA  
C. SADC  
D. ECCAS  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The reward for labour is:

A. wages  
B. rent  
C. interest  
D. profit  

---

**Q2.** The reward for capital is:

A. interest  
B. wages  
C. profit  
D. rent  

---

**Q3.** The reward for land is:

A. rent  
B. interest  
C. wages  
D. profit  

---

**Q4.** The reward for enterprise is:

A. profit  
B. rent  
C. interest  
D. wages  

---

**Q5.** The law of demand states that as price rises, quantity demanded:

A. falls  
B. doubles  
C. rises  
D. stays constant  

---

**Q6.** The law of supply states that as price rises, quantity supplied:

A. rises  
B. halves  
C. stays constant  
D. falls  

---

**Q7.** The price at which quantity demanded equals quantity supplied is the:

A. ceiling price  
B. equilibrium price  
C. floor price  
D. market price  

---

**Q8.** If a 10% price rise causes a 20% fall in quantity demanded, demand is:

A. inelastic  
B. elastic  
C. perfectly inelastic  
D. unit elastic  

---

**Q9.** If a 10% price rise causes a 5% fall in quantity demanded, demand is:

A. elastic  
B. unit elastic  
C. inelastic  
D. perfectly elastic  

---

**Q10.** The price elasticity of demand is calculated as:

A. % change in price ÷ % change in quantity demanded  
B. change in price ÷ change in quantity  
C. quantity ÷ price  
D. % change in quantity demanded ÷ % change in price  

---

**Q11.** A good whose demand rises when income rises is a:

A. inferior good  
B. complementary good  
C. normal good  
D. substitute good  

---

**Q12.** A good whose demand falls when income rises is an:

A. normal good  
B. necessity  
C. luxury good  
D. inferior good  

---

**Q13.** The law of diminishing returns applies in the:

A. very long run  
B. short run  
C. long run  
D. market period  

---

**Q14.** Costs that do not change with output are:

A. marginal costs  
B. fixed costs  
C. total costs  
D. variable costs  

---

**Q15.** Costs that change with output are:

A. sunk costs  
B. fixed costs  
C. variable costs  
D. overhead costs  

---

**Q16.** The extra cost of producing one more unit is the:

A. fixed cost  
B. average cost  
C. total cost  
D. marginal cost  

---

**Q17.** A market with many buyers and sellers of identical products is:

A. oligopoly  
B. monopolistic competition  
C. perfect competition  
D. monopoly  

---

**Q18.** A market with a single seller is a:

A. oligopoly  
B. duopoly  
C. perfect competition  
D. monopoly  

---

**Q19.** A market with a few large sellers is an:

A. monopolistic competition  
B. oligopoly  
C. monopoly  
D. perfect competition  

---

**Q20.** A market with many sellers of differentiated products is:

A. oligopoly  
B. monopolistic competition  
C. monopoly  
D. perfect competition  

---

**Q21.** A firm in perfect competition is a:

A. oligopolist  
B. price maker  
C. price taker  
D. monopolist  

---

**Q22.** A monopolist is a:

A. price cutter  
B. price taker  
C. price follower  
D. price maker  

---

**Q23.** The reduction in average cost as output increases is called:

A. increasing returns  
B. diminishing returns  
C. economies of scale  
D. diseconomies of scale  

---

**Q24.** The increase in average cost when a firm becomes too large is called:

A. constant returns  
B. diminishing returns  
C. economies of scale  
D. diseconomies of scale  

---

**Q25.** A maximum price set by the government is a:

A. price ceiling  
B. price floor  
C. equilibrium price  
D. market price  

---

**Q26.** A minimum price set by the government is a:

A. price floor  
B. price ceiling  
C. market price  
D. equilibrium price  

---

**Q27.** The benefit consumers gain when they pay less than they are willing to pay is:

A. consumer surplus  
B. profit  
C. producer surplus  
D. revenue  

---

**Q28.** The basic economic problem is:

A. scarcity  
B. unemployment  
C. taxation  
D. inflation  

---

**Q29.** The next best alternative forgone when a choice is made is the:

A. opportunity cost  
B. fixed cost  
C. marginal cost  
D. sunk cost  

---

**Q30.** The factors of production are land, labour, capital, and:

A. enterprise  
B. services  
C. goods  
D. money  

---

**Q31.** The three methods of measuring national income are income, output, and:

A. savings  
B. expenditure  
C. investment  
D. taxation  

---

**Q32.** Anything generally accepted as a medium of exchange is:

A. goods  
B. money  
C. credit  
D. services  

---

**Q33.** The total amount of money in circulation is the:

A. national income  
B. balance of payments  
C. money supply  
D. public debt  

---

**Q34.** The bank that controls the money supply is the:

A. commercial bank  
B. development bank  
C. merchant bank  
D. central bank  

---

**Q35.** The bank that accepts deposits and gives loans is a:

A. central bank  
B. insurance company  
C. commercial bank  
D. stock exchange  

---

**Q36.** A general and sustained rise in the price level is:

A. deflation  
B. depression  
C. recession  
D. inflation  

---

**Q37.** Inflation caused by excess demand is called:

A. hyperinflation  
B. demand-pull inflation  
C. cost-push inflation  
D. stagflation  

---

**Q38.** Inflation caused by rising costs of production is called:

A. hyperinflation  
B. cost-push inflation  
C. deflation  
D. demand-pull inflation  

---

**Q39.** The situation where people who are able and willing to work cannot find jobs is:

A. deflation  
B. inflation  
C. unemployment  
D. recession  

---

**Q40.** Trade between countries is called:

A. local trade  
B. home trade  
C. retail trade  
D. international trade  

---

**Q41.** The principle that a country should specialise in producing goods it produces most efficiently is:

A. opportunity cost  
B. economies of scale  
C. comparative advantage  
D. absolute advantage  

---

**Q42.** The difference between the value of exports and imports is the:

A. national income  
B. public debt  
C. balance of payments  
D. balance of trade  

---

**Q43.** A tax on imported goods is a:

A. grant  
B. tariff  
C. quota  
D. subsidy  

---

**Q44.** A limit on the quantity of a good that can be imported is a:

A. embargo  
B. quota  
C. subsidy  
D. tariff  

---

**Q45.** Taxes on income and profits are:

A. quotas  
B. indirect taxes  
C. direct taxes  
D. tariffs  

---

**Q46.** Taxes on goods and services are:

A. profit taxes  
B. direct taxes  
C. income taxes  
D. indirect taxes  

---

**Q47.** A plan of government revenue and expenditure is the:

A. receipt  
B. invoice  
C. budget  
D. balance sheet  

---

**Q48.** A budget where revenue equals expenditure is:

A. unbalanced  
B. deficit  
C. surplus  
D. balanced  

---

**Q49.** A budget where revenue exceeds expenditure is:

A. surplus  
B. deficit  
C. balanced  
D. unbalanced  

---

**Q50.** A budget where expenditure exceeds revenue is:

A. deficit  
B. surplus  
C. unbalanced  
D. balanced  

---

**Q51.** The increase in a country''s output of goods and services over time is:

A. economic growth  
B. inflation  
C. economic development  
D. recession  

---

**Q52.** The improvement in the standard of living and welfare of people is:

A. economic development  
B. inflation  
C. deflation  
D. economic growth  

---

**Q53.** The index that measures human welfare is the:

A. Human Development Index  
B. Price Index  
C. Consumer Price Index  
D. Stock Index  

---

**Q54.** Investment by foreign companies in a country is called:

A. foreign direct investment  
B. domestic investment  
C. public investment  
D. portfolio investment  

---

**Q55.** The international organisation that provides loans to countries in balance of payments difficulties is the:

A. World Bank  
B. IMF  
C. WTO  
D. UN  

---

**Q56.** The international organisation that finances development projects is the:

A. IMF  
B. World Bank  
C. UN  
D. WTO  

---

**Q57.** The economic community of Central African states is:

A. ECOWAS  
B. SADC  
C. ECCAS  
D. COMESA  

---

**Q58.** The total value of goods and services produced in a country in a year is the:

A. national debt  
B. balance of trade  
C. money supply  
D. national income  

---

**Q59.** GDP stands for:

A. Gross Domestic Profit  
B. Gross Development Plan  
C. Gross Domestic Product  
D. General Domestic Product  

---

**Q60.** GNP stands for:

A. Gross National Profit  
B. Gross Net Product  
C. General National Product  
D. Gross National Product  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The reward for enterprise is:

A. profit  
B. wages  
C. rent  
D. interest  

---

**Q2.** The law of demand states that as price rises, quantity demanded:

A. falls  
B. rises  
C. doubles  
D. stays constant  

---

**Q3.** The law of supply states that as price rises, quantity supplied:

A. rises  
B. stays constant  
C. falls  
D. halves  

---

**Q4.** The price at which quantity demanded equals quantity supplied is the:

A. equilibrium price  
B. floor price  
C. market price  
D. ceiling price  

---

**Q5.** If a 10% price rise causes a 20% fall in quantity demanded, demand is:

A. elastic  
B. perfectly inelastic  
C. inelastic  
D. unit elastic  

---

**Q6.** If a 10% price rise causes a 5% fall in quantity demanded, demand is:

A. inelastic  
B. perfectly elastic  
C. unit elastic  
D. elastic  

---

**Q7.** The price elasticity of demand is calculated as:

A. % change in price ÷ % change in quantity demanded  
B. % change in quantity demanded ÷ % change in price  
C. change in price ÷ change in quantity  
D. quantity ÷ price  

---

**Q8.** A good whose demand rises when income rises is a:

A. inferior good  
B. normal good  
C. complementary good  
D. substitute good  

---

**Q9.** A good whose demand falls when income rises is an:

A. normal good  
B. luxury good  
C. inferior good  
D. necessity  

---

**Q10.** The law of diminishing returns applies in the:

A. long run  
B. very long run  
C. market period  
D. short run  

---

**Q11.** Costs that do not change with output are:

A. variable costs  
B. total costs  
C. fixed costs  
D. marginal costs  

---

**Q12.** Costs that change with output are:

A. fixed costs  
B. overhead costs  
C. sunk costs  
D. variable costs  

---

**Q13.** The extra cost of producing one more unit is the:

A. fixed cost  
B. marginal cost  
C. average cost  
D. total cost  

---

**Q14.** A market with many buyers and sellers of identical products is:

A. oligopoly  
B. perfect competition  
C. monopolistic competition  
D. monopoly  

---

**Q15.** A market with a single seller is a:

A. oligopoly  
B. perfect competition  
C. monopoly  
D. duopoly  

---

**Q16.** A market with a few large sellers is an:

A. perfect competition  
B. monopoly  
C. monopolistic competition  
D. oligopoly  

---

**Q17.** A market with many sellers of differentiated products is:

A. monopoly  
B. oligopoly  
C. monopolistic competition  
D. perfect competition  

---

**Q18.** A firm in perfect competition is a:

A. monopolist  
B. oligopolist  
C. price maker  
D. price taker  

---

**Q19.** A monopolist is a:

A. price cutter  
B. price maker  
C. price taker  
D. price follower  

---

**Q20.** The reduction in average cost as output increases is called:

A. increasing returns  
B. economies of scale  
C. diminishing returns  
D. diseconomies of scale  

---

**Q21.** The increase in average cost when a firm becomes too large is called:

A. constant returns  
B. economies of scale  
C. diseconomies of scale  
D. diminishing returns  

---

**Q22.** A maximum price set by the government is a:

A. market price  
B. price floor  
C. equilibrium price  
D. price ceiling  

---

**Q23.** A minimum price set by the government is a:

A. market price  
B. equilibrium price  
C. price floor  
D. price ceiling  

---

**Q24.** The benefit consumers gain when they pay less than they are willing to pay is:

A. revenue  
B. profit  
C. producer surplus  
D. consumer surplus  

---

**Q25.** The basic economic problem is:

A. scarcity  
B. inflation  
C. unemployment  
D. taxation  

---

**Q26.** The next best alternative forgone when a choice is made is the:

A. opportunity cost  
B. marginal cost  
C. fixed cost  
D. sunk cost  

---

**Q27.** The factors of production are land, labour, capital, and:

A. enterprise  
B. goods  
C. money  
D. services  

---

**Q28.** The reward for labour is:

A. wages  
B. interest  
C. profit  
D. rent  

---

**Q29.** The reward for capital is:

A. interest  
B. profit  
C. wages  
D. rent  

---

**Q30.** The reward for land is:

A. rent  
B. profit  
C. interest  
D. wages  

---

**Q31.** The bank that controls the money supply is the:

A. commercial bank  
B. central bank  
C. development bank  
D. merchant bank  

---

**Q32.** The bank that accepts deposits and gives loans is a:

A. central bank  
B. commercial bank  
C. insurance company  
D. stock exchange  

---

**Q33.** A general and sustained rise in the price level is:

A. deflation  
B. recession  
C. inflation  
D. depression  

---

**Q34.** Inflation caused by excess demand is called:

A. cost-push inflation  
B. hyperinflation  
C. stagflation  
D. demand-pull inflation  

---

**Q35.** Inflation caused by rising costs of production is called:

A. demand-pull inflation  
B. deflation  
C. cost-push inflation  
D. hyperinflation  

---

**Q36.** The situation where people who are able and willing to work cannot find jobs is:

A. inflation  
B. recession  
C. deflation  
D. unemployment  

---

**Q37.** Trade between countries is called:

A. local trade  
B. international trade  
C. home trade  
D. retail trade  

---

**Q38.** The principle that a country should specialise in producing goods it produces most efficiently is:

A. opportunity cost  
B. comparative advantage  
C. economies of scale  
D. absolute advantage  

---

**Q39.** The difference between the value of exports and imports is the:

A. national income  
B. balance of payments  
C. balance of trade  
D. public debt  

---

**Q40.** A tax on imported goods is a:

A. subsidy  
B. quota  
C. grant  
D. tariff  

---

**Q41.** A limit on the quantity of a good that can be imported is a:

A. subsidy  
B. embargo  
C. quota  
D. tariff  

---

**Q42.** Taxes on income and profits are:

A. tariffs  
B. quotas  
C. indirect taxes  
D. direct taxes  

---

**Q43.** Taxes on goods and services are:

A. profit taxes  
B. indirect taxes  
C. direct taxes  
D. income taxes  

---

**Q44.** A plan of government revenue and expenditure is the:

A. receipt  
B. budget  
C. invoice  
D. balance sheet  

---

**Q45.** A budget where revenue equals expenditure is:

A. unbalanced  
B. surplus  
C. balanced  
D. deficit  

---

**Q46.** A budget where revenue exceeds expenditure is:

A. unbalanced  
B. deficit  
C. balanced  
D. surplus  

---

**Q47.** A budget where expenditure exceeds revenue is:

A. unbalanced  
B. balanced  
C. deficit  
D. surplus  

---

**Q48.** The increase in a country''s output of goods and services over time is:

A. recession  
B. inflation  
C. economic development  
D. economic growth  

---

**Q49.** The improvement in the standard of living and welfare of people is:

A. economic development  
B. economic growth  
C. inflation  
D. deflation  

---

**Q50.** The index that measures human welfare is the:

A. Human Development Index  
B. Consumer Price Index  
C. Price Index  
D. Stock Index  

---

**Q51.** Investment by foreign companies in a country is called:

A. foreign direct investment  
B. public investment  
C. portfolio investment  
D. domestic investment  

---

**Q52.** The international organisation that provides loans to countries in balance of payments difficulties is the:

A. IMF  
B. WTO  
C. UN  
D. World Bank  

---

**Q53.** The international organisation that finances development projects is the:

A. World Bank  
B. UN  
C. IMF  
D. WTO  

---

**Q54.** The economic community of Central African states is:

A. ECCAS  
B. COMESA  
C. SADC  
D. ECOWAS  

---

**Q55.** The total value of goods and services produced in a country in a year is the:

A. national debt  
B. national income  
C. balance of trade  
D. money supply  

---

**Q56.** GDP stands for:

A. Gross Domestic Profit  
B. Gross Domestic Product  
C. Gross Development Plan  
D. General Domestic Product  

---

**Q57.** GNP stands for:

A. Gross National Profit  
B. General National Product  
C. Gross National Product  
D. Gross Net Product  

---

**Q58.** The three methods of measuring national income are income, output, and:

A. savings  
B. investment  
C. taxation  
D. expenditure  

---

**Q59.** Anything generally accepted as a medium of exchange is:

A. goods  
B. credit  
C. money  
D. services  

---

**Q60.** The total amount of money in circulation is the:

A. national income  
B. public debt  
C. balance of payments  
D. money supply  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 4

## Structural Question Bank — Pure mathematics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PURE MATHEMATICS

**Q1.** (a) Express $z = 3 + 4i$ in modulus-argument form. *(4 marks)*

(b) Find the modulus and argument of $z^2$. *(4 marks)*

(c) Solve the equation $z^2 + 2z + 5 = 0$, giving your answers in the form $a + bi$. *(4 marks)*

---

**Q2.** (a) Given $z_1 = 2 + 3i$ and $z_2 = 1 - i$, find $z_1 z_2$ and $\frac{z_1}{z_2}$. *(6 marks)*

(b) Find the square roots of $-8 + 6i$. *(6 marks)*

---

**Q3.** (a) Express $z = 2(\cos 60^\circ + i\sin 60^\circ)$ in the form $a + bi$. *(3 marks)*

(b) Use De Moivre''s theorem to find $(1 + i)^8$. *(5 marks)*

(c) Solve $z^3 = 8$, giving all three roots. *(5 marks)*

---

**Q4.** (a) State the conditions for two matrices to be multiplied. *(2 marks)*

(b) Given $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$, find $AB$ and $BA$. *(6 marks)*

(c) Show that $AB \neq BA$. *(2 marks)*

---

**Q5.** (a) Find the determinant and inverse of $A = \begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$. *(5 marks)*

(b) Use the inverse matrix method to solve the simultaneous equations $2x + 3y = 7$ and $x + 4y = 6$. *(5 marks)*

---

**Q6.** (a) Find the eigenvalues and eigenvectors of $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. *(6 marks)*

(b) State the trace and determinant of $A$. *(2 marks)*

(c) Verify that the sum of the eigenvalues equals the trace. *(2 marks)*

---

**Q7.** (a) Given $\mathbf{a} = 2\mathbf{i} + 3\mathbf{j} - \mathbf{k}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j} + 4\mathbf{k}$, find $\mathbf{a} \cdot \mathbf{b}$. *(3 marks)*

(b) Find the angle between $\mathbf{a}$ and $\mathbf{b}$. *(4 marks)*

(c) Find $\mathbf{a} \times \mathbf{b}$. *(4 marks)*

---

**Q8.** (a) Find the equation of the plane passing through the points $(1, 2, 3)$, $(2, 0, 1)$, and $(0, 1, 2)$. *(6 marks)*

(b) Find the distance from the point $(1, 1, 1)$ to this plane. *(4 marks)*

---

**Q9.** (a) Prove by induction that $1^2 + 2^2 + 3^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Prove by induction that $3^n > n^2$ for all positive integers $n$. *(5 marks)*

---

**Q10.** (a) Prove by contradiction that $\sqrt{2}$ is irrational. *(5 marks)*

(b) Prove that the sum of two odd numbers is even. *(3 marks)*

(c) Prove that $n^3 - n$ is divisible by 6 for all positive integers $n$. *(5 marks)*

---

**Q11.** (a) Find the sum of the series $1 + 2 + 3 + \cdots + n$. *(3 marks)*

(b) Find the sum of the series $1^2 + 3^2 + 5^2 + \cdots + (2n-1)^2$. *(5 marks)*

(c) Determine whether the series $\sum_{n=1}^{\infty} \frac{1}{n(n+1)}$ converges, and find its sum. *(5 marks)*

---

**Q12.** (a) State the binomial theorem. *(2 marks)*

(b) Expand $(1 + x)^{10}$ up to the term in $x^3$. *(4 marks)*

(c) Find the coefficient of $x^5$ in the expansion of $(2 - 3x)^8$. *(5 marks)*

---

**Q13.** (a) Find the first three terms in the binomial expansion of $\frac{1}{\sqrt{1 + x}}$ for $|x| < 1$. *(5 marks)*

(b) Use your expansion to approximate $\frac{1}{\sqrt{1.1}}$. *(3 marks)*

(c) State the range of validity of the expansion. *(2 marks)*

---

**Q14.** (a) Find the general solution of the differential equation $\frac{dy}{dx} = \frac{y}{x}$. *(4 marks)*

(b) Solve the differential equation $\frac{dy}{dx} + 2y = e^{-x}$ given that $y = 1$ when $x = 0$. *(6 marks)*

---

**Q15.** (a) Solve the differential equation $\frac{d^2y}{dx^2} - 3\frac{dy}{dx} + 2y = 0$. *(5 marks)*

(b) Given that $y = 1$ and $\frac{dy}{dx} = 0$ when $x = 0$, find the particular solution. *(4 marks)*

---

**Q16.** (a) Express $f(x) = \frac{3x + 1}{(x-1)(x+2)}$ in partial fractions. *(5 marks)*

(b) Express $\frac{2x^2 + 3x + 1}{(x+1)(x^2 + 1)}$ in partial fractions. *(6 marks)*

---

**Q17.** (a) Find the roots of the equation $x^3 - 6x^2 + 11x - 6 = 0$. *(5 marks)*

(b) Given that $1 - i$ is a root of $x^3 - 3x^2 + 4x - 2 = 0$, find the other roots. *(5 marks)*

---

**Q18.** (a) State the remainder theorem. *(2 marks)*

(b) Find the remainder when $x^4 - 3x^3 + 2x - 1$ is divided by $x - 2$. *(4 marks)*

(c) Given that $x - 1$ is a factor of $x^3 + ax^2 + bx - 6$, and the remainder is 4 when divided by $x - 2$, find $a$ and $b$. *(6 marks)*

---

**Q19.** (a) Find $\lim_{x \to 0} \frac{\sin 3x}{x}$. *(3 marks)*

(b) Find $\lim_{x \to \infty} \frac{3x^2 + 2x}{x^2 - 1}$. *(3 marks)*

(c) Find $\lim_{x \to 0} \frac{e^x - 1}{x}$. *(3 marks)*

---

**Q20.** (a) Find the sum to infinity of the geometric series $1 + \frac{1}{2} + \frac{1}{4} + \cdots$. *(3 marks)*

(b) Find the sum of the first $n$ terms of the arithmetic series $3 + 7 + 11 + \cdots$. *(4 marks)*

(c) The sum of the first $n$ terms of a series is $n^2 + 3n$. Find the $n$th term. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 5

## Structural Question Bank — Mechanics and statistics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS AND STATISTICS

**Q1.** (a) State Newton''s second law of motion. *(2 marks)*

(b) A force of 10 N acts on a body of mass 2 kg. Calculate the acceleration. *(3 marks)*

(c) A body of mass 5 kg is pulled along a rough horizontal surface by a force of 20 N. If the frictional force is 8 N, calculate the acceleration. *(5 marks)*

---

**Q2.** (a) Define the terms "momentum" and "impulse". *(4 marks)*

(b) A ball of mass 0.2 kg moving at 5 m/s strikes a wall and rebounds at 4 m/s. Calculate the impulse. *(4 marks)*

(c) State the principle of conservation of momentum. *(2 marks)*

---

**Q3.** (a) A projectile is fired at 50 m/s at an angle of $30^\circ$ to the horizontal. Calculate the time of flight. *(4 marks)*

(b) Calculate the maximum height reached. *(4 marks)*

(c) Calculate the horizontal range. *(4 marks)*

---

**Q4.** (a) A particle moves in a straight line with acceleration $a = 2t$ m/s². Given that its velocity is 3 m/s when $t = 0$, find its velocity at time $t$. *(4 marks)*

(b) Find its displacement at time $t$ given that it starts from the origin. *(4 marks)*

(c) Find the displacement when $t = 3$ s. *(3 marks)*

---

**Q5.** (a) State the principle of moments. *(2 marks)*

(b) A uniform rod AB of length 4 m and weight 40 N is pivoted at its centre. A weight of 20 N is placed at A. Calculate the force needed at B to balance the rod. *(5 marks)*

(c) A uniform ladder of weight 200 N rests against a smooth vertical wall. Find the reactions at the wall and the ground. *(6 marks)*

---

**Q6.** (a) Define the terms "centre of mass" and "centre of gravity". *(4 marks)*

(b) Find the centre of mass of a uniform triangular lamina. *(4 marks)*

(c) A uniform rod of length 6 m and weight 60 N has a 30 N weight attached at one end. Find the position of the centre of mass. *(5 marks)*

---

**Q7.** (a) Define the term "work done". *(2 marks)*

(b) A force of 30 N acts at an angle of $60^\circ$ to the direction of motion. Calculate the work done in moving the body 10 m. *(4 marks)*

(c) A body of mass 4 kg is raised through 5 m. Calculate the work done against gravity. (Take $g = 10$ m/s²) *(4 marks)*

---

**Q8.** (a) State the work-energy theorem. *(2 marks)*

(b) A body of mass 2 kg moving at 4 m/s is brought to rest by a constant force. Calculate the work done. *(4 marks)*

(c) A car of mass 1000 kg accelerates from 10 m/s to 20 m/s. Calculate the work done. *(5 marks)*

---

**Q9.** (a) Define the terms "kinetic energy" and "potential energy". *(4 marks)*

(b) A body of mass 3 kg is projected vertically upwards with a speed of 20 m/s. Calculate its maximum height. (Take $g = 10$ m/s²) *(5 marks)*

(c) Calculate the kinetic energy of the body when it has risen 10 m. *(5 marks)*

---

**Q10.** (a) Define the term "power". *(2 marks)*

(b) A motor lifts a load of 500 kg through 20 m in 25 s. Calculate the power output. (Take $g = 10$ m/s²) *(5 marks)*

(c) A car of mass 1200 kg moves at a constant speed of 30 m/s against a resistance of 400 N. Calculate the power developed. *(5 marks)*

---

**Q11.** (a) Define the terms "discrete" and "continuous" random variables. *(4 marks)*

(b) A discrete random variable $X$ has the probability distribution $P(X = x) = kx$ for $x = 1, 2, 3, 4$. Find $k$. *(4 marks)*

(c) Find $E(X)$ and $Var(X)$ for this distribution. *(5 marks)*

---

**Q12.** (a) State the conditions for a binomial distribution. *(3 marks)*

(b) A fair coin is tossed 10 times. Find the probability of getting exactly 6 heads. *(4 marks)*

(c) Find the mean and variance of this binomial distribution. *(3 marks)*

---

**Q13.** (a) State the probability density function of a normal distribution. *(2 marks)*

(b) Given that $X \sim N(50, 16)$, find $P(46 < X < 54)$. *(5 marks)*

(c) Find the value of $x$ such that $P(X < x) = 0.95$. *(5 marks)*

---

**Q14.** (a) Define the term "Poisson distribution". *(2 marks)*

(b) The number of accidents per day at a junction follows a Poisson distribution with mean 2. Find the probability of exactly 3 accidents in a day. *(4 marks)*

(c) Find the probability of at least 1 accident in a day. *(4 marks)*

---

**Q15.** (a) Define the terms "population" and "sample". *(4 marks)*

(b) State three methods of sampling. *(3 marks)*

(c) Explain the difference between a parameter and a statistic. *(4 marks)*

---

**Q16.** (a) Define the term "confidence interval". *(2 marks)*

(b) A sample of 100 students has a mean score of 60 with a standard deviation of 8. Construct a 95% confidence interval for the population mean. *(6 marks)*

(c) State the effect of increasing the sample size on the confidence interval. *(3 marks)*

---

**Q17.** (a) State the null and alternative hypotheses for a two-tailed test of a population mean. *(4 marks)*

(b) A sample of 50 items has a mean of 102 and standard deviation 10. Test at the 5% level whether the population mean differs from 100. *(6 marks)*

---

**Q18.** (a) Define the term "correlation". *(2 marks)*

(b) Calculate the Pearson correlation coefficient for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Interpret your result. *(3 marks)*

---

**Q19.** (a) Define the term "regression". *(2 marks)*

(b) Find the equation of the least squares regression line of $y$ on $x$ for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Estimate $y$ when $x = 6$. *(3 marks)*

---

**Q20.** (a) Define the term "probability". *(2 marks)*

(b) Two dice are thrown. Find the probability that the sum is 7. *(4 marks)*

(c) A bag contains 3 red and 5 blue balls. Two balls are drawn without replacement. Find the probability that both are red. *(5 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 6

## Structural Question Bank — Pure mathematics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PURE MATHEMATICS

**Q1.** (a) Express $z = 3 + 4i$ in modulus-argument form. *(4 marks)*

(b) Find the modulus and argument of $z^2$. *(4 marks)*

(c) Solve the equation $z^2 + 2z + 5 = 0$, giving your answers in the form $a + bi$. *(4 marks)*

---

**Q2.** (a) Given $z_1 = 2 + 3i$ and $z_2 = 1 - i$, find $z_1 z_2$ and $\frac{z_1}{z_2}$. *(6 marks)*

(b) Find the square roots of $-8 + 6i$. *(6 marks)*

---

**Q3.** (a) Express $z = 2(\cos 60^\circ + i\sin 60^\circ)$ in the form $a + bi$. *(3 marks)*

(b) Use De Moivre''s theorem to find $(1 + i)^8$. *(5 marks)*

(c) Solve $z^3 = 8$, giving all three roots. *(5 marks)*

---

**Q4.** (a) State the conditions for two matrices to be multiplied. *(2 marks)*

(b) Given $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$, find $AB$ and $BA$. *(6 marks)*

(c) Show that $AB \neq BA$. *(2 marks)*

---

**Q5.** (a) Find the determinant and inverse of $A = \begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$. *(5 marks)*

(b) Use the inverse matrix method to solve the simultaneous equations $2x + 3y = 7$ and $x + 4y = 6$. *(5 marks)*

---

**Q6.** (a) Find the eigenvalues and eigenvectors of $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. *(6 marks)*

(b) State the trace and determinant of $A$. *(2 marks)*

(c) Verify that the sum of the eigenvalues equals the trace. *(2 marks)*

---

**Q7.** (a) Given $\mathbf{a} = 2\mathbf{i} + 3\mathbf{j} - \mathbf{k}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j} + 4\mathbf{k}$, find $\mathbf{a} \cdot \mathbf{b}$. *(3 marks)*

(b) Find the angle between $\mathbf{a}$ and $\mathbf{b}$. *(4 marks)*

(c) Find $\mathbf{a} \times \mathbf{b}$. *(4 marks)*

---

**Q8.** (a) Find the equation of the plane passing through the points $(1, 2, 3)$, $(2, 0, 1)$, and $(0, 1, 2)$. *(6 marks)*

(b) Find the distance from the point $(1, 1, 1)$ to this plane. *(4 marks)*

---

**Q9.** (a) Prove by induction that $1^2 + 2^2 + 3^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Prove by induction that $3^n > n^2$ for all positive integers $n$. *(5 marks)*

---

**Q10.** (a) Prove by contradiction that $\sqrt{2}$ is irrational. *(5 marks)*

(b) Prove that the sum of two odd numbers is even. *(3 marks)*

(c) Prove that $n^3 - n$ is divisible by 6 for all positive integers $n$. *(5 marks)*

---

**Q11.** (a) Find the sum of the series $1 + 2 + 3 + \cdots + n$. *(3 marks)*

(b) Find the sum of the series $1^2 + 3^2 + 5^2 + \cdots + (2n-1)^2$. *(5 marks)*

(c) Determine whether the series $\sum_{n=1}^{\infty} \frac{1}{n(n+1)}$ converges, and find its sum. *(5 marks)*

---

**Q12.** (a) State the binomial theorem. *(2 marks)*

(b) Expand $(1 + x)^{10}$ up to the term in $x^3$. *(4 marks)*

(c) Find the coefficient of $x^5$ in the expansion of $(2 - 3x)^8$. *(5 marks)*

---

**Q13.** (a) Find the first three terms in the binomial expansion of $\frac{1}{\sqrt{1 + x}}$ for $|x| < 1$. *(5 marks)*

(b) Use your expansion to approximate $\frac{1}{\sqrt{1.1}}$. *(3 marks)*

(c) State the range of validity of the expansion. *(2 marks)*

---

**Q14.** (a) Find the general solution of the differential equation $\frac{dy}{dx} = \frac{y}{x}$. *(4 marks)*

(b) Solve the differential equation $\frac{dy}{dx} + 2y = e^{-x}$ given that $y = 1$ when $x = 0$. *(6 marks)*

---

**Q15.** (a) Solve the differential equation $\frac{d^2y}{dx^2} - 3\frac{dy}{dx} + 2y = 0$. *(5 marks)*

(b) Given that $y = 1$ and $\frac{dy}{dx} = 0$ when $x = 0$, find the particular solution. *(4 marks)*

---

**Q16.** (a) Express $f(x) = \frac{3x + 1}{(x-1)(x+2)}$ in partial fractions. *(5 marks)*

(b) Express $\frac{2x^2 + 3x + 1}{(x+1)(x^2 + 1)}$ in partial fractions. *(6 marks)*

---

**Q17.** (a) Find the roots of the equation $x^3 - 6x^2 + 11x - 6 = 0$. *(5 marks)*

(b) Given that $1 - i$ is a root of $x^3 - 3x^2 + 4x - 2 = 0$, find the other roots. *(5 marks)*

---

**Q18.** (a) State the remainder theorem. *(2 marks)*

(b) Find the remainder when $x^4 - 3x^3 + 2x - 1$ is divided by $x - 2$. *(4 marks)*

(c) Given that $x - 1$ is a factor of $x^3 + ax^2 + bx - 6$, and the remainder is 4 when divided by $x - 2$, find $a$ and $b$. *(6 marks)*

---

**Q19.** (a) Find $\lim_{x \to 0} \frac{\sin 3x}{x}$. *(3 marks)*

(b) Find $\lim_{x \to \infty} \frac{3x^2 + 2x}{x^2 - 1}$. *(3 marks)*

(c) Find $\lim_{x \to 0} \frac{e^x - 1}{x}$. *(3 marks)*

---

**Q20.** (a) Find the sum to infinity of the geometric series $1 + \frac{1}{2} + \frac{1}{4} + \cdots$. *(3 marks)*

(b) Find the sum of the first $n$ terms of the arithmetic series $3 + 7 + 11 + \cdots$. *(4 marks)*

(c) The sum of the first $n$ terms of a series is $n^2 + 3n$. Find the $n$th term. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 7

## Structural Question Bank — Mechanics and statistics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MECHANICS AND STATISTICS

**Q1.** (a) State Newton''s second law of motion. *(2 marks)*

(b) A force of 10 N acts on a body of mass 2 kg. Calculate the acceleration. *(3 marks)*

(c) A body of mass 5 kg is pulled along a rough horizontal surface by a force of 20 N. If the frictional force is 8 N, calculate the acceleration. *(5 marks)*

---

**Q2.** (a) Define the terms "momentum" and "impulse". *(4 marks)*

(b) A ball of mass 0.2 kg moving at 5 m/s strikes a wall and rebounds at 4 m/s. Calculate the impulse. *(4 marks)*

(c) State the principle of conservation of momentum. *(2 marks)*

---

**Q3.** (a) A projectile is fired at 50 m/s at an angle of $30^\circ$ to the horizontal. Calculate the time of flight. *(4 marks)*

(b) Calculate the maximum height reached. *(4 marks)*

(c) Calculate the horizontal range. *(4 marks)*

---

**Q4.** (a) A particle moves in a straight line with acceleration $a = 2t$ m/s². Given that its velocity is 3 m/s when $t = 0$, find its velocity at time $t$. *(4 marks)*

(b) Find its displacement at time $t$ given that it starts from the origin. *(4 marks)*

(c) Find the displacement when $t = 3$ s. *(3 marks)*

---

**Q5.** (a) State the principle of moments. *(2 marks)*

(b) A uniform rod AB of length 4 m and weight 40 N is pivoted at its centre. A weight of 20 N is placed at A. Calculate the force needed at B to balance the rod. *(5 marks)*

(c) A uniform ladder of weight 200 N rests against a smooth vertical wall. Find the reactions at the wall and the ground. *(6 marks)*

---

**Q6.** (a) Define the terms "centre of mass" and "centre of gravity". *(4 marks)*

(b) Find the centre of mass of a uniform triangular lamina. *(4 marks)*

(c) A uniform rod of length 6 m and weight 60 N has a 30 N weight attached at one end. Find the position of the centre of mass. *(5 marks)*

---

**Q7.** (a) Define the term "work done". *(2 marks)*

(b) A force of 30 N acts at an angle of $60^\circ$ to the direction of motion. Calculate the work done in moving the body 10 m. *(4 marks)*

(c) A body of mass 4 kg is raised through 5 m. Calculate the work done against gravity. (Take $g = 10$ m/s²) *(4 marks)*

---

**Q8.** (a) State the work-energy theorem. *(2 marks)*

(b) A body of mass 2 kg moving at 4 m/s is brought to rest by a constant force. Calculate the work done. *(4 marks)*

(c) A car of mass 1000 kg accelerates from 10 m/s to 20 m/s. Calculate the work done. *(5 marks)*

---

**Q9.** (a) Define the terms "kinetic energy" and "potential energy". *(4 marks)*

(b) A body of mass 3 kg is projected vertically upwards with a speed of 20 m/s. Calculate its maximum height. (Take $g = 10$ m/s²) *(5 marks)*

(c) Calculate the kinetic energy of the body when it has risen 10 m. *(5 marks)*

---

**Q10.** (a) Define the term "power". *(2 marks)*

(b) A motor lifts a load of 500 kg through 20 m in 25 s. Calculate the power output. (Take $g = 10$ m/s²) *(5 marks)*

(c) A car of mass 1200 kg moves at a constant speed of 30 m/s against a resistance of 400 N. Calculate the power developed. *(5 marks)*

---

**Q11.** (a) Define the terms "discrete" and "continuous" random variables. *(4 marks)*

(b) A discrete random variable $X$ has the probability distribution $P(X = x) = kx$ for $x = 1, 2, 3, 4$. Find $k$. *(4 marks)*

(c) Find $E(X)$ and $Var(X)$ for this distribution. *(5 marks)*

---

**Q12.** (a) State the conditions for a binomial distribution. *(3 marks)*

(b) A fair coin is tossed 10 times. Find the probability of getting exactly 6 heads. *(4 marks)*

(c) Find the mean and variance of this binomial distribution. *(3 marks)*

---

**Q13.** (a) State the probability density function of a normal distribution. *(2 marks)*

(b) Given that $X \sim N(50, 16)$, find $P(46 < X < 54)$. *(5 marks)*

(c) Find the value of $x$ such that $P(X < x) = 0.95$. *(5 marks)*

---

**Q14.** (a) Define the term "Poisson distribution". *(2 marks)*

(b) The number of accidents per day at a junction follows a Poisson distribution with mean 2. Find the probability of exactly 3 accidents in a day. *(4 marks)*

(c) Find the probability of at least 1 accident in a day. *(4 marks)*

---

**Q15.** (a) Define the terms "population" and "sample". *(4 marks)*

(b) State three methods of sampling. *(3 marks)*

(c) Explain the difference between a parameter and a statistic. *(4 marks)*

---

**Q16.** (a) Define the term "confidence interval". *(2 marks)*

(b) A sample of 100 students has a mean score of 60 with a standard deviation of 8. Construct a 95% confidence interval for the population mean. *(6 marks)*

(c) State the effect of increasing the sample size on the confidence interval. *(3 marks)*

---

**Q17.** (a) State the null and alternative hypotheses for a two-tailed test of a population mean. *(4 marks)*

(b) A sample of 50 items has a mean of 102 and standard deviation 10. Test at the 5% level whether the population mean differs from 100. *(6 marks)*

---

**Q18.** (a) Define the term "correlation". *(2 marks)*

(b) Calculate the Pearson correlation coefficient for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Interpret your result. *(3 marks)*

---

**Q19.** (a) Define the term "regression". *(2 marks)*

(b) Find the equation of the least squares regression line of $y$ on $x$ for the data: $x = 1, 2, 3, 4, 5$; $y = 2, 4, 5, 4, 5$. *(6 marks)*

(c) Estimate $y$ when $x = 6$. *(3 marks)*

---

**Q20.** (a) Define the term "probability". *(2 marks)*

(b) Two dice are thrown. Find the probability that the sum is 7. *(4 marks)*

(c) A bag contains 3 red and 5 blue balls. Two balls are drawn without replacement. Find the probability that both are red. *(5 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P2 SET 8

## Structural Question Bank — Pure mathematics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: PURE MATHEMATICS

**Q1.** (a) Express $z = 3 + 4i$ in modulus-argument form. *(4 marks)*

(b) Find the modulus and argument of $z^2$. *(4 marks)*

(c) Solve the equation $z^2 + 2z + 5 = 0$, giving your answers in the form $a + bi$. *(4 marks)*

---

**Q2.** (a) Given $z_1 = 2 + 3i$ and $z_2 = 1 - i$, find $z_1 z_2$ and $\frac{z_1}{z_2}$. *(6 marks)*

(b) Find the square roots of $-8 + 6i$. *(6 marks)*

---

**Q3.** (a) Express $z = 2(\cos 60^\circ + i\sin 60^\circ)$ in the form $a + bi$. *(3 marks)*

(b) Use De Moivre''s theorem to find $(1 + i)^8$. *(5 marks)*

(c) Solve $z^3 = 8$, giving all three roots. *(5 marks)*

---

**Q4.** (a) State the conditions for two matrices to be multiplied. *(2 marks)*

(b) Given $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ and $B = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}$, find $AB$ and $BA$. *(6 marks)*

(c) Show that $AB \neq BA$. *(2 marks)*

---

**Q5.** (a) Find the determinant and inverse of $A = \begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$. *(5 marks)*

(b) Use the inverse matrix method to solve the simultaneous equations $2x + 3y = 7$ and $x + 4y = 6$. *(5 marks)*

---

**Q6.** (a) Find the eigenvalues and eigenvectors of $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. *(6 marks)*

(b) State the trace and determinant of $A$. *(2 marks)*

(c) Verify that the sum of the eigenvalues equals the trace. *(2 marks)*

---

**Q7.** (a) Given $\mathbf{a} = 2\mathbf{i} + 3\mathbf{j} - \mathbf{k}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j} + 4\mathbf{k}$, find $\mathbf{a} \cdot \mathbf{b}$. *(3 marks)*

(b) Find the angle between $\mathbf{a}$ and $\mathbf{b}$. *(4 marks)*

(c) Find $\mathbf{a} \times \mathbf{b}$. *(4 marks)*

---

**Q8.** (a) Find the equation of the plane passing through the points $(1, 2, 3)$, $(2, 0, 1)$, and $(0, 1, 2)$. *(6 marks)*

(b) Find the distance from the point $(1, 1, 1)$ to this plane. *(4 marks)*

---

**Q9.** (a) Prove by induction that $1^2 + 2^2 + 3^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. *(6 marks)*

(b) Prove by induction that $3^n > n^2$ for all positive integers $n$. *(5 marks)*

---

**Q10.** (a) Prove by contradiction that $\sqrt{2}$ is irrational. *(5 marks)*

(b) Prove that the sum of two odd numbers is even. *(3 marks)*

(c) Prove that $n^3 - n$ is divisible by 6 for all positive integers $n$. *(5 marks)*

---

**Q11.** (a) Find the sum of the series $1 + 2 + 3 + \cdots + n$. *(3 marks)*

(b) Find the sum of the series $1^2 + 3^2 + 5^2 + \cdots + (2n-1)^2$. *(5 marks)*

(c) Determine whether the series $\sum_{n=1}^{\infty} \frac{1}{n(n+1)}$ converges, and find its sum. *(5 marks)*

---

**Q12.** (a) State the binomial theorem. *(2 marks)*

(b) Expand $(1 + x)^{10}$ up to the term in $x^3$. *(4 marks)*

(c) Find the coefficient of $x^5$ in the expansion of $(2 - 3x)^8$. *(5 marks)*

---

**Q13.** (a) Find the first three terms in the binomial expansion of $\frac{1}{\sqrt{1 + x}}$ for $|x| < 1$. *(5 marks)*

(b) Use your expansion to approximate $\frac{1}{\sqrt{1.1}}$. *(3 marks)*

(c) State the range of validity of the expansion. *(2 marks)*

---

**Q14.** (a) Find the general solution of the differential equation $\frac{dy}{dx} = \frac{y}{x}$. *(4 marks)*

(b) Solve the differential equation $\frac{dy}{dx} + 2y = e^{-x}$ given that $y = 1$ when $x = 0$. *(6 marks)*

---

**Q15.** (a) Solve the differential equation $\frac{d^2y}{dx^2} - 3\frac{dy}{dx} + 2y = 0$. *(5 marks)*

(b) Given that $y = 1$ and $\frac{dy}{dx} = 0$ when $x = 0$, find the particular solution. *(4 marks)*

---

**Q16.** (a) Express $f(x) = \frac{3x + 1}{(x-1)(x+2)}$ in partial fractions. *(5 marks)*

(b) Express $\frac{2x^2 + 3x + 1}{(x+1)(x^2 + 1)}$ in partial fractions. *(6 marks)*

---

**Q17.** (a) Find the roots of the equation $x^3 - 6x^2 + 11x - 6 = 0$. *(5 marks)*

(b) Given that $1 - i$ is a root of $x^3 - 3x^2 + 4x - 2 = 0$, find the other roots. *(5 marks)*

---

**Q18.** (a) State the remainder theorem. *(2 marks)*

(b) Find the remainder when $x^4 - 3x^3 + 2x - 1$ is divided by $x - 2$. *(4 marks)*

(c) Given that $x - 1$ is a factor of $x^3 + ax^2 + bx - 6$, and the remainder is 4 when divided by $x - 2$, find $a$ and $b$. *(6 marks)*

---

**Q19.** (a) Find $\lim_{x \to 0} \frac{\sin 3x}{x}$. *(3 marks)*

(b) Find $\lim_{x \to \infty} \frac{3x^2 + 2x}{x^2 - 1}$. *(3 marks)*

(c) Find $\lim_{x \to 0} \frac{e^x - 1}{x}$. *(3 marks)*

---

**Q20.** (a) Find the sum to infinity of the geometric series $1 + \frac{1}{2} + \frac{1}{4} + \cdots$. *(3 marks)*

(b) Find the sum of the first $n$ terms of the arithmetic series $3 + 7 + 11 + \cdots$. *(4 marks)*

(c) The sum of the first $n$ terms of a series is $n^2 + 3n$. Find the $n$th term. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The modulus of $3 + 4i$ is:

A. 5  
B. 7  
C. 1  
D. 25  

---

**Q2.** The argument of $1 + i$ is:

A. 45°  
B. 90°  
C. 30°  
D. 135°  

---

**Q3.** The complex conjugate of $2 - 3i$ is:

A. 2 + 3i  
B. -2 + 3i  
C. 2 - 3i  
D. -2 - 3i  

---

**Q4.** The product $(1 + i)(1 - i)$ equals:

A. 2  
B. 1  
C. -2  
D. 0  

---

**Q5.** The roots of $z^2 + 4 = 0$ are:

A. ±2i  
B. ±4  
C. ±2  
D. ±4i  

---

**Q6.** The value of $i^2$ is:

A. -1  
B. -i  
C. i  
D. 1  

---

**Q7.** The value of $i^4$ is:

A. -1  
B. 1  
C. i  
D. -i  

---

**Q8.** The determinant of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 11  
B. 5  
C. 6  
D. 10  

---

**Q9.** The inverse of $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$ is:

A. $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$  
B. $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$  
C. $\begin{pmatrix} 1/2 & 0 \\ 0 & 1/4 \end{pmatrix}$  
D. $\begin{pmatrix} 0 & 2 \\ 4 & 0 \end{pmatrix}$  

---

**Q10.** The trace of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 11  
C. 10  
D. 6  

---

**Q11.** The eigenvalues of $\begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$ are:

A. 5 and 6  
B. 0 and 1  
C. 2 and 3  
D. 1 and 2  

---

**Q12.** The dot product of $\mathbf{i} + 2\mathbf{j}$ and $2\mathbf{i} + 3\mathbf{j}$ is:

A. 7  
B. 5  
C. 6  
D. 8  

---

**Q13.** The vectors $\mathbf{a} = 2\mathbf{i} + \mathbf{j}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j}$ are:

A. equal  
B. perpendicular  
C. parallel  
D. opposite  

---

**Q14.** The sum $1 + 2 + 3 + \cdots + n$ equals:

A. $n^2$  
B. $\frac{n(n+1)}{2}$  
C. $\frac{n(n+1)(2n+1)}{6}$  
D. $\frac{n(n-1)}{2}$  

---

**Q15.** The sum $1^2 + 2^2 + \cdots + n^2$ equals:

A. $n^3$  
B. $\frac{n(n+1)}{2}$  
C. $\frac{n(n+1)(2n+1)}{6}$  
D. $\frac{n^2(n+1)}{2}$  

---

**Q16.** The sum to infinity of $1 + \frac{1}{2} + \frac{1}{4} + \cdots$ is:

A. 3  
B. 1  
C. $\frac{3}{2}$  
D. 2  

---

**Q17.** The coefficient of $x^2$ in $(1 + x)^4$ is:

A. 12  
B. 8  
C. 6  
D. 4  

---

**Q18.** The remainder when $x^3 - 2x + 1$ is divided by $x - 1$ is:

A. 2  
B. -1  
C. 1  
D. 0  

---

**Q19.** Given that $x - 1$ is a factor of $x^3 - 1$, the other factor is:

A. $x^2 - 1$  
B. $x^2 + x + 1$  
C. $x^2 - x + 1$  
D. $x^2 + 1$  

---

**Q20.** The value of $\lim_{x \to 0} \frac{\sin x}{x}$ is:

A. undefined  
B. 1  
C. ∞  
D. 0  

---

**Q21.** The value of $\lim_{x \to \infty} \frac{1}{x}$ is:

A. undefined  
B. 1  
C. 0  
D. ∞  

---

**Q22.** The general solution of $\frac{dy}{dx} = \frac{y}{x}$ is:

A. $y = e^{kx}$  
B. $y = k/x$  
C. $y = kx^2$  
D. $y = kx$  

---

**Q23.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 5 and 6  
B. -2 and -3  
C. 2 and 3  
D. 1 and 6  

---

**Q24.** The sum of the roots of $x^2 - 5x + 6 = 0$ is:

A. -6  
B. -5  
C. 6  
D. 5  

---

**Q25.** The product of the roots of $x^2 - 5x + 6 = 0$ is:

A. 6  
B. 5  
C. -6  
D. -5  

---

**Q26.** The partial fractions of $\frac{1}{(x-1)(x+1)}$ are:

A. $\frac{1/2}{x-1} - \frac{1/2}{x+1}$  
B. $\frac{1}{x-1} + \frac{1}{x+1}$  
C. $\frac{1}{x-1} - \frac{1}{x+1}$  
D. $\frac{1/2}{x-1} + \frac{1/2}{x+1}$  

---

**Q27.** The value of $(1 + i)^2$ is:

A. 2i  
B. -2i  
C. 2  
D. -2  

---

**Q28.** The value of $(1 + i)^4$ is:

A. -4  
B. 4i  
C. -4i  
D. 4  

---

**Q29.** The modulus of $\frac{1}{i}$ is:

A. 1  
B. -1  
C. 0  
D. i  

---

**Q30.** The argument of $-1$ is:

A. 180°  
B. 270°  
C. 90°  
D. 0°  

---

**Q31.** The SI unit of force is the:

A. joule  
B. newton  
C. watt  
D. pascal  

---

**Q32.** The SI unit of momentum is:

A. kg m/s²  
B. kg m/s  
C. J  
D. N m  

---

**Q33.** The SI unit of impulse is:

A. N m  
B. J  
C. N s  
D. W  

---

**Q34.** The acceleration of a body of mass 2 kg under a force of 10 N is:

A. 2 m/s²  
B. 20 m/s²  
C. 0.2 m/s²  
D. 5 m/s²  

---

**Q35.** The momentum of a 3 kg body moving at 4 m/s is:

A. 7 kg m/s  
B. 48 kg m/s  
C. 12 kg m/s  
D. 1 kg m/s  

---

**Q36.** The kinetic energy of a 2 kg body moving at 3 m/s is:

A. 6 J  
B. 12 J  
C. 18 J  
D. 9 J  

---

**Q37.** The work done by a force of 10 N moving a body 5 m is:

A. 15 J  
B. 50 J  
C. 2 J  
D. 0.5 J  

---

**Q38.** The power of a machine doing 300 J of work in 10 s is:

A. 3 W  
B. 30 W  
C. 0.03 W  
D. 3000 W  

---

**Q39.** The maximum height reached by a body projected at 20 m/s (g = 10 m/s²) is:

A. 40 m  
B. 10 m  
C. 20 m  
D. 2 m  

---

**Q40.** The time of flight of a projectile fired at 50 m/s at 30° to the horizontal (g = 10 m/s²) is:

A. 2.5 s  
B. 10 s  
C. 50 s  
D. 5 s  

---

**Q41.** The horizontal range of a projectile fired at 50 m/s at 30° (g = 10 m/s²) is:

A. 250 m  
B. 433 m  
C. 216.5 m  
D. 125 m  

---

**Q42.** A uniform rod is balanced at its centre. The principle of moments states:

A. work = force × distance  
B. power = work ÷ time  
C. sum of forces = 0  
D. sum of clockwise moments = sum of anticlockwise moments  

---

**Q43.** The centre of mass of a uniform rod is at its:

A. centre of gravity of the rod  
B. midpoint  
C. end  
D. one-quarter point  

---

**Q44.** The probability of getting exactly 6 heads in 10 tosses of a fair coin is:

A. $6/10$  
B. $\binom{10}{6}(1/2)^{10}$  
C. $\binom{10}{6}(1/2)^6$  
D. $(1/2)^6$  

---

**Q45.** The mean of a binomial distribution with n = 10 and p = 0.5 is:

A. 0.5  
B. 2.5  
C. 5  
D. 10  

---

**Q46.** The variance of a binomial distribution with n = 10 and p = 0.5 is:

A. 0.5  
B. 5  
C. 10  
D. 2.5  

---

**Q47.** The mean of a Poisson distribution with parameter λ is:

A. 1/λ  
B. √λ  
C. λ  
D. λ²  

---

**Q48.** The variance of a Poisson distribution with parameter λ is:

A. 1/λ  
B. √λ  
C. λ²  
D. λ  

---

**Q49.** For a standard normal distribution, the mean is:

A. 0  
B. 1  
C. 50  
D. 100  

---

**Q50.** For a standard normal distribution, the variance is:

A. 1  
B. 0  
C. 100  
D. 50  

---

**Q51.** The z-score of a value 60 from a normal distribution with mean 50 and standard deviation 5 is:

A. 2  
B. 0.5  
C. 10  
D. 1.2  

---

**Q52.** The 95% confidence interval for a mean uses the z-value:

A. 1.96  
B. 2.58  
C. 0.95  
D. 1.64  

---

**Q53.** The 99% confidence interval for a mean uses the z-value:

A. 2.58  
B. 0.99  
C. 1.96  
D. 1.64  

---

**Q54.** A sample of 100 items has mean 60 and standard deviation 8. The standard error of the mean is:

A. 0.8  
B. 80  
C. 0.08  
D. 8  

---

**Q55.** The Pearson correlation coefficient ranges from:

A. 0 to 1  
B. -1 to 1  
C. -∞ to ∞  
D. 0 to 100  

---

**Q56.** A correlation coefficient of 0 indicates:

A. perfect positive correlation  
B. no linear correlation  
C. strong correlation  
D. perfect negative correlation  

---

**Q57.** The probability of getting a sum of 7 when two dice are thrown is:

A. 1/36  
B. 7/36  
C. 6/36  
D. 1/6  

---

**Q58.** The probability of drawing a red ball from a bag of 3 red and 5 blue balls is:

A. 5/8  
B. 3/5  
C. 1/8  
D. 3/8  

---

**Q59.** Two events are independent if:

A. P(A∩B) = P(A) + P(B)  
B. P(A) = P(B)  
C. P(A∩B) = P(A)P(B)  
D. P(A∪B) = P(A)P(B)  

---

**Q60.** The probability of an impossible event is:

A. 1  
B. undefined  
C. 0.5  
D. 0  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Further Mathematics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Further Mathematics',
  'CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL FURTHER MATHEMATICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_science
**Subject:** Further Mathematics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The product $(1 + i)(1 - i)$ equals:

A. 2  
B. 0  
C. 1  
D. -2  

---

**Q2.** The roots of $z^2 + 4 = 0$ are:

A. ±2i  
B. ±2  
C. ±4  
D. ±4i  

---

**Q3.** The value of $i^2$ is:

A. -1  
B. i  
C. 1  
D. -i  

---

**Q4.** The value of $i^4$ is:

A. 1  
B. i  
C. -i  
D. -1  

---

**Q5.** The determinant of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 6  
C. 11  
D. 10  

---

**Q6.** The inverse of $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$ is:

A. $\begin{pmatrix} 1/2 & 0 \\ 0 & 1/4 \end{pmatrix}$  
B. $\begin{pmatrix} 0 & 2 \\ 4 & 0 \end{pmatrix}$  
C. $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$  
D. $\begin{pmatrix} 2 & 0 \\ 0 & 4 \end{pmatrix}$  

---

**Q7.** The trace of $\begin{pmatrix} 2 & 3 \\ 1 & 4 \end{pmatrix}$ is:

A. 5  
B. 6  
C. 11  
D. 10  

---

**Q8.** The eigenvalues of $\begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$ are:

A. 5 and 6  
B. 2 and 3  
C. 0 and 1  
D. 1 and 2  

---

**Q9.** The dot product of $\mathbf{i} + 2\mathbf{j}$ and $2\mathbf{i} + 3\mathbf{j}$ is:

A. 7  
B. 6  
C. 8  
D. 5  

---

**Q10.** The vectors $\mathbf{a} = 2\mathbf{i} + \mathbf{j}$ and $\mathbf{b} = \mathbf{i} - 2\mathbf{j}$ are:

A. parallel  
B. equal  
C. opposite  
D. perpendicular  

---

**Q11.** The sum $1 + 2 + 3 + \cdots + n$ equals:

A. $\frac{n(n-1)}{2}$  
B. $\frac{n(n+1)(2n+1)}{6}$  
C. $\frac{n(n+1)}{2}$  
D. $n^2$  

---

**Q12.** The sum $1^2 + 2^2 + \cdots + n^2$ equals:

A. $\frac{n(n+1)}{2}$  
B. $\frac{n^2(n+1)}{2}$  
C. $n^3$  
D. $\frac{n(n+1)(2n+1)}{6}$  

---

**Q13.** The sum to infinity of $1 + \frac{1}{2} + \frac{1}{4} + \cdots$ is:

A. 3  
B. 2  
C. 1  
D. $\frac{3}{2}$  

---

**Q14.** The coefficient of $x^2$ in $(1 + x)^4$ is:

A. 12  
B. 6  
C. 8  
D. 4  

---

**Q15.** The remainder when $x^3 - 2x + 1$ is divided by $x - 1$ is:

A. 2  
B. 1  
C. 0  
D. -1  

---

**Q16.** Given that $x - 1$ is a factor of $x^3 - 1$, the other factor is:

A. $x^2 + 1$  
B. $x^2 - x + 1$  
C. $x^2 - 1$  
D. $x^2 + x + 1$  

---

**Q17.** The value of $\lim_{x \to 0} \frac{\sin x}{x}$ is:

A. ∞  
B. undefined  
C. 1  
D. 0  

---

**Q18.** The value of $\lim_{x \to \infty} \frac{1}{x}$ is:

A. ∞  
B. undefined  
C. 1  
D. 0  

---

**Q19.** The general solution of $\frac{dy}{dx} = \frac{y}{x}$ is:

A. $y = e^{kx}$  
B. $y = kx$  
C. $y = k/x$  
D. $y = kx^2$  

---

**Q20.** The roots of $x^2 - 5x + 6 = 0$ are:

A. 5 and 6  
B. 2 and 3  
C. -2 and -3  
D. 1 and 6  

---

**Q21.** The sum of the roots of $x^2 - 5x + 6 = 0$ is:

A. -6  
B. 6  
C. 5  
D. -5  

---

**Q22.** The product of the roots of $x^2 - 5x + 6 = 0$ is:

A. -5  
B. 5  
C. -6  
D. 6  

---

**Q23.** The partial fractions of $\frac{1}{(x-1)(x+1)}$ are:

A. $\frac{1}{x-1} - \frac{1}{x+1}$  
B. $\frac{1/2}{x-1} + \frac{1/2}{x+1}$  
C. $\frac{1/2}{x-1} - \frac{1/2}{x+1}$  
D. $\frac{1}{x-1} + \frac{1}{x+1}$  

---

**Q24.** The value of $(1 + i)^2$ is:

A. -2  
B. -2i  
C. 2  
D. 2i  

---

**Q25.** The value of $(1 + i)^4$ is:

A. -4  
B. 4  
C. 4i  
D. -4i  

---

**Q26.** The modulus of $\frac{1}{i}$ is:

A. 1  
B. 0  
C. -1  
D. i  

---

**Q27.** The argument of $-1$ is:

A. 180°  
B. 90°  
C. 0°  
D. 270°  

---

**Q28.** The modulus of $3 + 4i$ is:

A. 5  
B. 1  
C. 25  
D. 7  

---

**Q29.** The argument of $1 + i$ is:

A. 45°  
B. 30°  
C. 90°  
D. 135°  

---

**Q30.** The complex conjugate of $2 - 3i$ is:

A. 2 + 3i  
B. -2 - 3i  
C. -2 + 3i  
D. 2 - 3i  

---

**Q31.** The acceleration of a body of mass 2 kg under a force of 10 N is:

A. 2 m/s²  
B. 5 m/s²  
C. 20 m/s²  
D. 0.2 m/s²  

---

**Q32.** The momentum of a 3 kg body moving at 4 m/s is:

A. 7 kg m/s  
B. 12 kg m/s  
C. 48 kg m/s  
D. 1 kg m/s  

---

**Q33.** The kinetic energy of a 2 kg body moving at 3 m/s is:

A. 6 J  
B. 18 J  
C. 9 J  
D. 12 J  

---

**Q34.** The work done by a force of 10 N moving a body 5 m is:

A. 2 J  
B. 15 J  
C. 0.5 J  
D. 50 J  

---

**Q35.** The power of a machine doing 300 J of work in 10 s is:

A. 3000 W  
B. 0.03 W  
C. 30 W  
D. 3 W  

---

**Q36.** The maximum height reached by a body projected at 20 m/s (g = 10 m/s²) is:

A. 10 m  
B. 2 m  
C. 40 m  
D. 20 m  

---

**Q37.** The time of flight of a projectile fired at 50 m/s at 30° to the horizontal (g = 10 m/s²) is:

A. 2.5 s  
B. 5 s  
C. 10 s  
D. 50 s  

---

**Q38.** The horizontal range of a projectile fired at 50 m/s at 30° (g = 10 m/s²) is:

A. 250 m  
B. 216.5 m  
C. 433 m  
D. 125 m  

---

**Q39.** A uniform rod is balanced at its centre. The principle of moments states:

A. work = force × distance  
B. sum of forces = 0  
C. sum of clockwise moments = sum of anticlockwise moments  
D. power = work ÷ time  

---

**Q40.** The centre of mass of a uniform rod is at its:

A. one-quarter point  
B. end  
C. centre of gravity of the rod  
D. midpoint  

---

**Q41.** The probability of getting exactly 6 heads in 10 tosses of a fair coin is:

A. $\binom{10}{6}(1/2)^6$  
B. $6/10$  
C. $\binom{10}{6}(1/2)^{10}$  
D. $(1/2)^6$  

---

**Q42.** The mean of a binomial distribution with n = 10 and p = 0.5 is:

A. 10  
B. 0.5  
C. 2.5  
D. 5  

---

**Q43.** The variance of a binomial distribution with n = 10 and p = 0.5 is:

A. 0.5  
B. 2.5  
C. 5  
D. 10  

---

**Q44.** The mean of a Poisson distribution with parameter λ is:

A. 1/λ  
B. λ  
C. √λ  
D. λ²  

---

**Q45.** The variance of a Poisson distribution with parameter λ is:

A. 1/λ  
B. λ²  
C. λ  
D. √λ  

---

**Q46.** For a standard normal distribution, the mean is:

A. 100  
B. 1  
C. 50  
D. 0  

---

**Q47.** For a standard normal distribution, the variance is:

A. 100  
B. 50  
C. 1  
D. 0  

---

**Q48.** The z-score of a value 60 from a normal distribution with mean 50 and standard deviation 5 is:

A. 1.2  
B. 0.5  
C. 10  
D. 2  

---

**Q49.** The 95% confidence interval for a mean uses the z-value:

A. 1.96  
B. 1.64  
C. 2.58  
D. 0.95  

---

**Q50.** The 99% confidence interval for a mean uses the z-value:

A. 2.58  
B. 1.96  
C. 0.99  
D. 1.64  

---

**Q51.** A sample of 100 items has mean 60 and standard deviation 8. The standard error of the mean is:

A. 0.8  
B. 0.08  
C. 8  
D. 80  

---

**Q52.** The Pearson correlation coefficient ranges from:

A. -1 to 1  
B. -∞ to ∞  
C. 0 to 100  
D. 0 to 1  

---

**Q53.** A correlation coefficient of 0 indicates:

A. no linear correlation  
B. strong correlation  
C. perfect positive correlation  
D. perfect negative correlation  

---

**Q54.** The probability of getting a sum of 7 when two dice are thrown is:

A. 6/36  
B. 1/6  
C. 7/36  
D. 1/36  

---

**Q55.** The probability of drawing a red ball from a bag of 3 red and 5 blue balls is:

A. 5/8  
B. 3/8  
C. 3/5  
D. 1/8  

---

**Q56.** Two events are independent if:

A. P(A∩B) = P(A) + P(B)  
B. P(A∩B) = P(A)P(B)  
C. P(A) = P(B)  
D. P(A∪B) = P(A)P(B)  

---

**Q57.** The probability of an impossible event is:

A. 1  
B. 0.5  
C. 0  
D. undefined  

---

**Q58.** The probability of a certain event is:

A. 0  
B. 0.5  
C. undefined  
D. 1  

---

**Q59.** The SI unit of force is the:

A. joule  
B. pascal  
C. newton  
D. watt  

---

**Q60.** The SI unit of momentum is:

A. kg m/s²  
B. J  
C. N m  
D. kg m/s  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

commit;
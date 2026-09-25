-- English Language (ordinary): one course per GCE curriculum topic.
-- Replaces the single "Complete O-Level English Language Course" with concise,
-- example-rich topic courses.

begin;

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-comprehension', 'English Language', 'Comprehension', 'Reading comprehension, literal and inferential questions, and vocabulary in context.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('0c3d166f-a09d-4d53-8922-838edc5b4e27'::uuid, 'eng-comprehension', 'English Language', 'Comprehension', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Comprehension

Comprehension tests how well you read and understand a passage. The GCE paper gives you a passage followed by questions that check literal understanding, inference, and vocabulary in context. Read the passage twice before answering — once for the general idea, once for detail.

### What you must know

- **Skimming:** Read quickly to get the general idea. Ask yourself: who, what, where, when, why?
- **Scanning:** Search for specific information (names, dates, figures) to answer a particular question.
- **Literal questions:** The answer is stated directly in the passage. Quote or rephrase it.
- **Inferential questions:** The answer is implied, not stated. Combine clues in the passage with your own reasoning.
- **Vocabulary in context:** The meaning of a word is often suggested by the words around it. Look for clues: definitions, examples, contrasts, or cause-and-effect.
- **Answering technique:** Answer in your own words unless asked to quote. Use full sentences. Match the marks — a 2-mark question needs two points.

### Worked example

**Passage:** "The harmattan wind swept across the northern plains, carrying fine dust that settled on rooftops and turned the sky a hazy orange. Farmers welcomed it, for the dry air helped their harvested groundnuts dry quickly, but mothers complained that the dust irritated their children''s eyes."

**Question 1 (literal):** What effect did the harmattan have on the sky?

Step 1: Locate the phrase about the sky: "turned the sky a hazy orange".

Step 2: Answer in a full sentence: **The harmattan turned the sky a hazy orange.**

**Question 2 (inferential):** Why did the farmers welcome the harmattan?

Step 1: Find the reason given: "the dry air helped their harvested groundnuts dry quickly".

Step 2: Answer: **The farmers welcomed the harmattan because its dry air helped their groundnuts dry quickly.**

**Question 3 (vocabulary):** What does "hazy" mean as used in the passage?

Step 1: Look at the context: dust in the air makes the sky unclear.

Step 2: Answer: **"Hazy" means unclear or misty, because the dust in the air made it hard to see clearly.**

### Common mistakes to avoid

- Copying long chunks of the passage instead of answering in your own words.
- Giving one point for a question worth two marks.
- Ignoring the context when asked for the meaning of a word.

### Practice questions

**Passage:** "Mama Ngo settled under the mango tree with her basket of tomatoes. Every Saturday she walked the two kilometres to the market, where her regular customers knew her by name. Today, however, the sky threatened rain, and she wondered whether the journey would be worth it."

1. (Literal) Where did Mama Ngo sit with her basket?
2. (Inferential) Why did Mama Ngo wonder whether the journey would be worth it?
3. (Vocabulary) What does "threatened" suggest about the weather?

### Answers

1. She sat under the mango tree.
2. Because the sky threatened rain, which might spoil her tomatoes or keep customers away.
3. "Threatened" suggests the weather looked likely to rain — it was a warning of rain.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-summary-writing', 'English Language', 'Summary Writing', 'Identifying main points, paraphrasing, and writing concise summaries within a word limit.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('5f6da158-5df4-4771-816b-f3d2e8412f4c'::uuid, 'eng-summary-writing', 'English Language', 'Summary Writing', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Summary Writing

Summary writing tests your ability to condense a passage into a fixed number of words while keeping only the main points. The GCE paper usually asks for a summary of about 100–150 words. The skill is selection: leave out examples, repetitions, and minor details.

### What you must know

- **Read the instruction carefully:** Note the required word count and what you must summarize (e.g., "the causes of the problem").
- **Identify the main points:** Each paragraph usually contains one main point. Underline key sentences as you read.
- **Use your own words:** Paraphrase rather than copy. Changing a few words is not enough — rephrase the idea.
- **Leave out:** Examples, illustrations, quotations, repetitions, and figures of speech.
- **Count your words:** Write the number of words at the end. Stay within the limit (usually ±10 words is acceptable).
- **Write in one paragraph** unless told otherwise, in your own continuous prose.

### Worked example

**Passage:** "The rapid growth of Douala has created serious traffic problems. Because more people are moving to the city for work, the number of private cars on the roads has increased sharply. In addition, many roads are narrow and poorly maintained, which slows down vehicles. Furthermore, the public transport system is unreliable, so commuters prefer to drive themselves. As a result, long queues of vehicles form every morning and evening."

**Task:** In not more than 60 words, summarize the causes of traffic problems in Douala.

Step 1: Identify the causes (the task asks for causes only):

- more people moving to the city for work
- more private cars on the roads
- narrow, poorly maintained roads
- unreliable public transport, so people drive themselves

Step 2: Write in your own words, in one paragraph:

**"Traffic problems in Douala are caused by the growing number of people moving to the city for work, which has increased the use of private cars. The roads are also narrow and badly maintained, while the unreliable public transport system forces commuters to drive themselves."**

Step 3: Count the words — this is 46 words, within the limit.

### Common mistakes to avoid

- Copying sentences from the passage instead of paraphrasing.
- Including examples and minor details that push you over the word limit.
- Summarizing the whole passage when the task asks for only one aspect (e.g., causes only).

### Practice questions

**Passage:** "Regular exercise improves health in several ways. It strengthens the heart and lungs, reducing the risk of heart disease. It also helps control body weight by burning excess calories. Moreover, physical activity releases chemicals in the brain that improve mood and reduce stress. Finally, exercise builds stronger bones and muscles, which protects the body from injury."

1. In not more than 50 words, summarize the benefits of regular exercise.
2. State the number of words you used.

### Answers

1. Sample summary: "Regular exercise strengthens the heart and lungs, lowering the risk of heart disease. It helps control weight by burning calories, improves mood and reduces stress through chemicals released in the brain, and builds stronger bones and muscles that protect against injury." (43 words)
2. Accept any summary of 50 words or fewer that covers the four benefits in the candidate''s own words.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-composition-writing', 'English Language', 'Essay Writing', 'Narrative, descriptive, argumentative, and expository essays with clear structure.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('90614e38-3cfa-44e2-817c-0a08d420b995'::uuid, 'eng-composition-writing', 'English Language', 'Essay Writing', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Essay Writing

Essay writing (composition) is the highest-scoring section of the GCE English Language paper. You choose one title from a list and write about 400–500 words. The examiner rewards a clear structure, good paragraphing, accurate grammar, and lively vocabulary.

### What you must know

- **Types of essays:**
  - Narrative: tells a story with a clear sequence of events.
  - Descriptive: paints a picture with vivid sensory details (sight, sound, smell, touch, taste).
  - Argumentative: takes a position and defends it with reasons and evidence.
  - Expository: explains or informs about a topic.
- **Structure:** Introduction (state your topic or position), body (2–4 paragraphs, one idea each), conclusion (sum up or give a final thought).
- **Planning:** Spend 5 minutes planning. Jot down your main points before writing.
- **Paragraphing:** Start a new paragraph for each new idea. Use linking words: firstly, however, therefore, in addition, finally.
- **Vocabulary:** Use precise and varied words. Avoid repeating "good", "bad", "nice", "big".
- **Accuracy:** Watch tenses, subject-verb agreement, and punctuation. A few well-written sentences beat many careless ones.

### Worked example

**Title: "Write a story that ends with the words: ''I will never forget that day.''"**

Step 1: Plan the story arc:

- Introduction: setting — a rainy Saturday in Buea, visiting my grandmother.
- Body 1: the incident — a fire breaks out in the kitchen.
- Body 2: the response — neighbours form a bucket chain; we save the house.
- Body 3: the lesson — courage and community.
- Conclusion: "I will never forget that day."

Step 2: Write the introduction with a strong opening:

**"The rain drummed on the zinc roof as I sat by the fire in my grandmother''s kitchen. It was an ordinary Saturday, until the smell of burning oil changed everything."**

Step 3: Develop each body paragraph around one event, using dialogue and detail, then close with the required ending.

### Common mistakes to avoid

- Writing without a plan, so the essay wanders off the title.
- One giant paragraph with no structure.
- Repeating the same words and using childish vocabulary.
- Ignoring the required ending or the exact title given.

### Practice questions

Choose one title and write a full essay:

1. "Describe a market scene in your town."
2. "Write a story that ends with the words: ''We had learnt our lesson.''"
3. "Examinations should be abolished. Discuss."
4. "Write a letter to a friend describing your plans for the next holiday."

### Answers

There is no single correct answer for an essay. Check your work against this checklist:

- Did I answer the exact title?
- Do I have an introduction, body, and conclusion?
- Is each paragraph about one idea?
- Did I use varied vocabulary and accurate grammar?
- Did I include the required ending (if given)?
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-directed-writing', 'English Language', 'Directed Writing', 'Formal and informal letters, reports, speeches, and dialogues with correct format.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('1d99883e-d80a-4dc9-9133-57a9103c77d7'::uuid, 'eng-directed-writing', 'English Language', 'Directed Writing', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Directed Writing

Directed writing asks you to produce a specific type of text for a specific audience and purpose: a formal letter, an informal letter, a report, a speech, or a dialogue. The examiner checks both the format and the content. Getting the format right earns easy marks.

### What you must know

- **Formal letter (to an official, company, or authority):**
  - Your address (top right), date below it.
  - Recipient''s address (left, below the date).
  - Salutation: "Dear Sir," or "Dear Madam,".
  - Title or subject line (underlined).
  - Body: introduction, details, request/action.
  - Closing: "Yours faithfully," (if you used "Dear Sir/Madam") or "Yours sincerely," (if you named the person).
  - Sign and print your name.
- **Informal letter (to a friend or relative):**
  - Your address and date (top right).
  - Salutation: "Dear John,".
  - Friendly opening and closing ("Your friend," / "Love,").
- **Report:** Title, introduction (purpose), findings (numbered points), conclusion, and recommendations. End with name and date.
- **Speech:** Greeting ("Good morning, ladies and gentlemen"), clear introduction, main points, and a strong conclusion with thanks.
- **Register:** Match your language to the audience — formal for officials, friendly for friends.

### Worked example

**Task: Write a formal letter to the Mayor of your town complaining about the poor state of the roads in your neighbourhood.**

Step 1: Set out the format:

\*\*P.O. Box 123
Buea
15th March 2026

The Mayor
Buea City Council
Buea

Dear Sir,

ROAD CONDITIONS IN MOKINDA NEIGHBOURHOOD\*\*

Step 2: Write the body with a clear complaint and a request:

**"I am writing to draw your attention to the deplorable state of the roads in Mokinda. The roads are full of potholes and become impassable whenever it rains. This has caused several accidents and makes it difficult for pupils to reach school. I kindly request that the council repair these roads as a matter of urgency."**

Step 3: Close correctly:

**"Yours faithfully,
Ngo Bih"**

### Common mistakes to avoid

- Mixing formal and informal language in the same letter.
- Forgetting the subject line or the correct closing ("Yours faithfully" vs "Yours sincerely").
- Writing a report without headings or a speech without a greeting.

### Practice questions

1. Write a formal letter to the manager of a company applying for the post of a sales assistant.
2. Write an informal letter to a friend telling him or her about your school''s sports day.
3. Write a report to your principal on the causes of lateness among students.
4. Write a speech to be delivered at your school''s prize-giving day.

### Answers

Check your work against the format rules above. For each piece, confirm:

- Is the format correct for the type of text (letter/report/speech)?
- Is the register appropriate for the audience?
- Does the content fully answer the task?
- Are grammar, spelling, and punctuation accurate?
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-grammar', 'English Language', 'Grammar', 'Tenses, subject-verb agreement, clauses, articles, prepositions, and punctuation.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('e6951441-3375-439b-9802-8ea4bc760339'::uuid, 'eng-grammar', 'English Language', 'Grammar', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Grammar

Grammar questions test your control of the rules of English. The GCE paper asks you to identify and correct errors, choose the right tense, and complete sentences correctly. Accuracy in grammar also lifts your essay and letter marks.

### What you must know

- **Tenses:** Use the correct tense for the time of the action. Present: "She walks." Past: "She walked." Present perfect: "She has walked." Future: "She will walk." Keep tenses consistent within a sentence.
- **Subject-verb agreement (concord):** A singular subject takes a singular verb; a plural subject takes a plural verb. "The boy plays." / "The boys play." Watch tricky subjects: "Everyone is here" (not "are"), "The news is good" (not "are").
- **Clauses:** A main clause can stand alone; a subordinate clause cannot. "Although it rained, we went out." (main: "we went out").
- **Articles:** Use "a" before consonant sounds and "an" before vowel sounds: "a book", "an apple", "an hour" (silent h).
- **Prepositions:** Learn common pairs: "interested in", "good at", "afraid of", "depend on", "listen to".
- **Punctuation:** Capital letters, full stops, commas, question marks, and apostrophes. Use an apostrophe for possession ("the boy''s bag") and contractions ("don''t"), never for plurals.
- **Common errors:** "Their/there/they''re", "its/it''s", "your/you''re", "affect/effect", "advice/advise".

### Worked example

**Correct the errors in this sentence: "Each of the students have their own book."**

Step 1: "Each" is singular, so the verb must be singular: "have" → "has".

Step 2: "their" referring to "each" is acceptable in modern usage, but the safest correction for an exam is "his or her".

Step 3: Corrected sentence: **"Each of the students has his or her own book."**

### Worked example 2

**Choose the correct word: "The new policy will (affect / effect) our school."**

Step 1: "Affect" is a verb meaning to influence; "effect" is usually a noun meaning a result.

Step 2: Here we need a verb: the policy will influence our school.

Step 3: Answer: **affect** — "The new policy will affect our school."

### Common mistakes to avoid

- Using a plural verb after "everyone", "each", "either", or "neither".
- Confusing "its" (possession) with "it''s" (it is).
- Mixing tenses in one sentence, e.g., "She went to the market and buys fish."

### Practice questions

1. Correct: "The team are playing well today."
2. Choose: "Neither of the answers (is / are) correct."
3. Correct: "He is good in mathematics."
4. Fill the blank: "I have lived here \_\_\_ 2010." (for / since)

### Answers

1. "The team is playing well today." (A team is a single unit.)
2. "Neither of the answers is correct." (Neither is singular.)
3. "He is good at mathematics." (Correct preposition: good at.)
4. "I have lived here since 2010." (Since is used with a point in time; for is used with a period.)
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-vocabulary', 'English Language', 'Vocabulary', 'Synonyms, antonyms, word formation, and idioms.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('8e1f4baf-69b7-447f-89db-1aa45e2cbda8'::uuid, 'eng-vocabulary', 'English Language', 'Vocabulary', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Vocabulary

Vocabulary questions test your knowledge of word meanings and your ability to use words precisely. The GCE paper includes synonyms, antonyms, word formation, and idioms. A wide vocabulary also makes your essays and summaries more impressive.

### What you must know

- **Synonyms:** Words with the same or similar meaning. "Happy" → joyful, cheerful, delighted. "Big" → large, huge, enormous.
- **Antonyms:** Words with opposite meanings. "Happy" → sad. "Ancient" → modern. "Expand" → contract.
- **Word formation:** Build new words with prefixes and suffixes.
  - Prefixes change meaning: un-, in-, im-, dis-, re-, pre-, mis-. "Honest" → dishonest, "possible" → impossible, "write" → rewrite.
  - Suffixes change word class: -tion, -ment, -ness (nouns); -ful, -less, -ous (adjectives); -ly (adverbs). "Govern" → government, "beauty" → beautiful, "care" → careless.
- **Idioms:** Fixed expressions whose meaning is not literal. "To hit the nail on the head" = to be exactly right. "To let the cat out of the bag" = to reveal a secret.
- **Context clues:** When you meet an unknown word, use the surrounding words to guess its meaning.

### Worked example

**Give a synonym and an antonym for the word "generous".**

Step 1: Synonym — a word with a similar meaning: **kind, giving, or charitable**.

Step 2: Antonym — a word with the opposite meaning: **mean, stingy, or selfish**.

### Worked example 2

**Form a noun from the verb "decide".**

Step 1: Add the suffix -ion: decide → decision.

Step 2: Check the spelling change: the final "e" is dropped before -ion.

Step 3: Answer: **decision**.

### Common mistakes to avoid

- Choosing a word that is related but not a true synonym (e.g., "happy" and "healthy").
- Adding a prefix or suffix that does not exist (e.g., "unhappy" is correct, "unbeautiful" is not standard).
- Misusing idioms by changing their fixed words.

### Practice questions

1. Give a synonym for "difficult".
2. Give an antonym for "ancient".
3. Form an adjective from the noun "danger".
4. What does the idiom "to be over the moon" mean?

### Answers

1. Hard, challenging, or tough.
2. Modern, new, or recent.
3. Dangerous.
4. To be extremely happy or delighted.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-register', 'English Language', 'Register', 'Formal and informal language, and choosing the right style for the audience.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('f9f97a25-8182-4f75-ac62-953889a8e68f'::uuid, 'eng-register', 'English Language', 'Register', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Register

Register is the level of formality in language. The GCE paper tests whether you can choose the right style for the situation — formal for official contexts, informal for friends. Using the wrong register is a common reason for losing marks in directed writing.

### What you must know

- **Formal register:** Used for official letters, reports, speeches, and academic writing. Features: complete sentences, standard grammar, no contractions, precise vocabulary, polite forms ("I would like to request", "kindly").
- **Informal register:** Used for letters and messages to friends and family. Features: contractions ("I''m", "don''t"), everyday vocabulary, personal tone, exclamations.
- **Choosing register:** Match the audience and purpose. A letter to the Mayor is formal; a note to your friend is informal.
- **Formal vs informal pairs:**
  - "ask" → "request"
  - "get" → "receive"
  - "buy" → "purchase"
  - "start" → "commence"
  - "a lot of" → "a great deal of"
  - "kids" → "children"
- **Avoid in formal writing:** slang ("cool", "gonna"), contractions, and vague words ("things", "stuff").

### Worked example

**Rewrite this informal sentence in formal register: "I''m writing to tell you about the problems with the road."**

Step 1: Remove the contraction "I''m" → "I am".

Step 2: Replace informal words: "tell you about" → "draw your attention to".

Step 3: Formal version: **"I am writing to draw your attention to the problems with the road."**

### Worked example 2

**Which sentence is appropriate for a formal letter?**
A) "I wanna complain about the bad roads."
B) "I wish to lodge a complaint about the poor state of the roads."

Step 1: Sentence A uses slang ("wanna") and is too casual.

Step 2: Sentence B uses formal vocabulary ("wish to lodge a complaint").

Step 3: Answer: **B**.

### Common mistakes to avoid

- Using contractions and slang in formal letters and reports.
- Using overly stiff language in letters to friends.
- Mixing registers within one piece of writing.

### Practice questions

1. Rewrite in formal register: "The kids are gonna get hurt on that road."
2. Rewrite in informal register: "I would like to invite you to my birthday celebration."
3. Choose the more formal word: "help" or "assist".
4. Which is acceptable in a formal report: "a lot of money" or "a considerable amount of money"?

### Answers

1. "Children are likely to be injured on that road."
2. "I''m inviting you to my birthday party."
3. "Assist" is more formal.
4. "A considerable amount of money" is appropriate for a formal report.
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

insert into public.topics (id, subject, title, description, level, class_levels, series, question_count, estimated_minutes)
values ('eng-oral-english', 'English Language', 'Oral English', 'Pronunciation, vowel and consonant sounds, word stress, and intonation.', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 0, 30)
on conflict (id) do update set title = excluded.title, description = excluded.description, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, updated_at = now();

insert into public.course_documents (id, topic_id, subject, title, language, level, class_levels, series, status, markdown_content, content_kind, doc_type)
values ('c4284ffd-52c4-4eba-a1fd-bb1ec2db4183'::uuid, 'eng-oral-english', 'English Language', 'Oral English', 'english', 'ordinary', array['form_4', 'form_5']::text[], array['general', 'science', 'arts', 'commercial', 'technical']::text[], 'published', '# Oral English

Oral English tests your knowledge of the sounds of English: pronunciation, stress, and intonation. The GCE paper asks you to identify the odd sound in a group, choose the correctly stressed word, or pick the word with a particular vowel sound. You cannot hear the sounds in the exam, so you must know the rules.

### What you must know

- **Vowel sounds:** English has short vowels (bit, bed, cat), long vowels (beat, bird, car), and diphthongs (boy, cow, day). Words like "ship" and "sheep" differ only in vowel length.
- **Consonant sounds:** Watch silent letters: "knee" (k silent), "write" (w silent), "hour" (h silent), "listen" (t silent).
- **Word stress:** Every word of two or more syllables has one stressed syllable. Stress can change meaning: "record" (RE-cord, noun) vs "re-CORD" (verb). Common patterns: two-syllable nouns stress the first syllable (PREsent), two-syllable verbs stress the second (preSENT).
- **Sentence stress:** Content words (nouns, verbs, adjectives) are stressed; function words (the, and, of) are usually weak.
- **Intonation:** Rising tone for yes/no questions ("Are you ready?"), falling tone for statements and wh-questions ("Where are you going?").
- **Common confusions:** "live" (verb, short i) vs "live" (adjective, long i); "read" (present) vs "read" (past, pronounced "red").

### Worked example

**Which word has a different vowel sound from the others: cat, hat, bath, late?**

Step 1: Say each word and identify the vowel sound:

- cat → /æ/ (short a)
- hat → /æ/ (short a)
- bath → /ɑː/ (long a, in British English)
- late → /eɪ/ (diphthong)

Step 2: "cat" and "hat" share /æ/; "bath" and "late" are different.

Step 3: The odd one out depends on the set — here the clearest answer is **late** (it has a diphthong, not a single vowel sound).

### Worked example 2

**Which syllable is stressed in the word "photograph"?**

Step 1: "photograph" has three syllables: pho-to-graph.

Step 2: The noun "photograph" stresses the first syllable.

Step 3: Answer: **PHO-to-graph**.

### Common mistakes to avoid

- Forgetting silent letters when comparing sounds.
- Stressing the wrong syllable in words that change stress between noun and verb.
- Confusing short and long vowel pairs like "bit/beat" and "full/fool".

### Practice questions

1. Which word has a silent letter: knee, cat, dog, pen?
2. Which syllable is stressed in "record" when it is used as a noun?
3. Which word has a different vowel sound: seat, meet, sit, feet?
4. Which word is stressed differently from the others: present (noun), present (verb), happy, table?

### Answers

1. "Knee" — the "k" is silent.
2. The first syllable: RE-cord.
3. "Sit" — it has a short vowel /ɪ/, while the others have the long vowel /iː/.
4. "Happy" — it stresses the first syllable like the noun "present", but "present" as a verb stresses the second syllable; the odd one out is the verb "present" (preSENT).
', 'course', 'course')
on conflict (id) do update set topic_id = excluded.topic_id, subject = excluded.subject, title = excluded.title, language = excluded.language, level = excluded.level, class_levels = excluded.class_levels, series = excluded.series, status = excluded.status, markdown_content = excluded.markdown_content, content_kind = excluded.content_kind, doc_type = excluded.doc_type, updated_at = now();

update public.course_documents
set status = 'archived', updated_at = now()
where topic_id = 'course-eng-ordinary' and status = 'published';

commit;

notify pgrst, 'reload schema';

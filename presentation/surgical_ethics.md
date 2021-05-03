---
title: "Shared Ethical Dilemmas For Surgery and Critical Care"
author: "Callum Taylor"
date: "10/01/2021"
output:
  revealjs::revealjs_presentation:
    transition: none
    self_contained: false
    reveal_plugins: ["notes"]
---

#

- What do surgeons perceive as an ethical dilemma
- What do critical care perceive as an ethical dilemma
- Do we have the same perception of it



<div class="notes">
The title I was given for this talk was Ethical Dilemmas in Critical Care.

As I bet you can guess before we start, most of critical care, and most of the difficult bits are the ethical dilemmas.

What we mean by an ethical dilemma, is a scenario where you have more than one possible course of action, and all competing paths you could take have ethically valid reasons to follow them. In such a scenario, you're not trying to work out the right thing to do where there's only one right thing. Instead you're trying to pick out of the options what is the "most right thing", or the "least bad thing", or maybe the most pragmatic or most justifiable thing, depending what you see aas important.

My hope is that this session will be complementary to Kyle's first session this morning, on who should be treated in Intensive Care. Today we've looked at who we would consider sick, why we'd see them as sick, and how to treat them. This last session hopefully is looking at how we can determine whether those treatments are "the most right" or "the least bad".
</div>

# Main Points of Talk

- We under value patient's quality of life
- We underestimate the harms of aggressive treatment
- We overestimate the benefits of aggressive treatment
- Patients need access to information about wide range of risks and benefits to make an autonomous decision

# Ethical Dilemmas as Perceived By Surgeons{data-background-iframe="https://callumgwtaylor.github.io/surgical_critical_ethics/diagrams/map.html"}

<div class="notes">

I thought this being a course for Surgeons, we should focus on what Surgeons identify as difficult scenarios ethically. These bullet points in this mindmap come from a paper that interviewed Norweigian surgeons about the ethical scenarios that concerned them at [work.](https://link.springer.com/article/10.1186/1472-6939-6-7, title = "Action ethical dilemmas in surgery: an interview study of practicing surgeons")


The author split these dilemmas into those that were related to these three categories:

- Dilemmas related to treatment
- Dilemmas related to communication
- Dilemmas related to society

If we quickly go through them, I think you'll agree with me that we can probably boil it down to a single question

Starting with treatment [collapse communication and society], we see most of the dilemmas are all variations on the same theme. When is it right to offer surgical treatment, when is it right to withdraw treatment, how do we know when we have intervened too greatly, and what do we do when someone wants a treatment that we think is inappropriate?

These are all, to my eyes, versions of the same question. In what situation should we offer treatments, in what situations should we withhold certain treatments, and how can we work out what situation we are in?

There is another interesting set of dilemmas that comes up in the respecting patients header, with the, what do we do when the patient is making a decision we disagree with, that increases the risk of them dying? You could link that to the question to the one above, but we've got half an hour and it's the end of the day, so lets not push it.

You can see thought processes coming up from the surgeons interviewed in this paper:

> "You know that if you do not do anything immediately, the patient will die. If you start you have a chance of making it. You give it a try"

> "It is easier to act then refrain from action"

In these comments you can see some guiding principles from the surgeons interviewed coming to light:

1. An important aim for the surgeon is to reduce the chance of the patient dying
2. It would be a major loss to miss the chance to prevent the patients death
   1. Maybe it's better to have tried to prevent death and failed, rather than not try and the patient dies, despite the fact that they share the same consequence, in either scenario the patient is still dead.

I think when we look at the ethical dilemmas in the communication theme, we see the same question coming up when we look at resolving differences with seniors and other departments. What is the right thing to do for this patient?

Again, complaining about your colleagues practical skills, some universal experiences, interesting but maybe not connected to the main question.

The dilemmas the surgeons raised about resource allocation are really interesting. Is it right to spend the thousands we do on a single patient here, where if we invested that money into public health or vaccinations world wide, you may save hundreds more lives?

This would bring up incredibly uncomfortable questions for critical care. If you consider that NICE set a cost-effectiveness threshold for treatments at around [£30000 / QALY](https://pubmed.ncbi.nlm.nih.gov/18767894/), and that a Norweigian study found that if you had a threshold of double that, at €64,000, around 1 in 6 patients were still costing greater than a [cost effective amount](https://ccforum.biomedcentral.com/articles/10.1186/s13054-017-1792-0). Uncomfortable questions, so again, lets avoid questions of resource allocation for this talk.

So. Ignoring the topics I don't want to talk about, the main ethical dilemma in surgery is, how do you know what the right thing to do for an individual patient is? What are the factors or principles that are important in deciding treatment? How do we deal with the fact that all our decisions are based on uncertain knowledge, and risks rather than certainty?

</div>

# What is the right thing to do for this patient?

<div class="notes">

There are two main things we need to establish here, this question we want to answer.

1. The first is working out the factors that might be relevant in working out the right thing in general
2. The second is working out how the facts of this situation, affect it specifically

We're saying there may be a best thing to do in general, but that may be different when you consider the individual case

</div>

# Example Scenario

> A 65 year old patient presents to the emergency department as a standby call to resus
> They have a distended, peritonitic abdomen. They are alert and in significant pain.
> They are in AF with RVR (rate ~ 140). They are cool to the shoulders. Their systolic blood pressure is 80.
> Their gas shows a type one respiratory failure, with metabolic acidosis (H+ 80, Lactate 12)
> They are on no regular medicines, they are 150 cm and 100kg (BMI 45).

> Estimated mortality using NELA risk adjustment model: 12.6%
> Estimated morbidity using POSSUM risk adjustment model: 99.5%


# Structure of Principles

```{r, echo= FALSE}
DiagrammeR::mermaid("
graph TD;
A[Principlism]
A---B[Autonomy]
A---C[Justice]
A---D[Beneficence]
A---E[Non Maleficence]
", height = 1000)
```


<div class="notes">

Part of today is to help in clinical scenarios, part of today is to help with interviews or exams or similarly assesed thing.

When we specifically talk about the principles in the diagram there, we're in the territory of things that are more useful for exams.

These concepts in the diagram are probably not new to anyone here, but they do give a good structure for us to approach an ethical dilemma.

So priniciplism is an approach to answering ethical questions. It is one approach among many. It is particularly designed for biomedical dilemmas, it's clear and straight forward and popular, but it has no specific claim to truth.

The logic in principlism is that in any medical dilemma, there are four equally valid principles that could affect the right thing to do.

There's the principle of respecting the patient as a person with their own rights to decide what happens to them, the principle of respecting their autonomy.

There's the principle of treating the patient fairly, and everyone in society fairly. That's justice.

There's the importance to act in the way that maximises the good consequences, such as saving a life. That's beneficence.

Lastly there's the importance of acting in a way that minimises the bad consequences, such as pain and discomfort. That's non-maleficence.

Why these four principles and not four others? Literally just because. Beachamp and Childress put forward that these are the important principles in 1979. They make sense to most of us, so we go along with it. They make sense to us intuitively, and they come from a school of thinking known as intuititionism. This principle like autonomy is important because of course it is.

</div>

# Maximise Good {data-background-iframe="https://callumgwtaylor.github.io/surgical_critical_ethics/diagrams/beneficence.html"}


<div class="notes">

So our motivator in deciding to treat might be to do our best to stop the patient dying.
We're acting like the surgeons interviewed in the paper, there's a chance to save life if you act, so you act.

You can see that our act aiming to follow beneficence here could be flipped to say we're acting in a way to maximise non-maleficence, we're trying to act in a way that prevents a bad thing, in this scenario death or significant impairment.

This does make intuitive sense, it follows these ideas of intuitionism. All things being equal, there being a choice between living and dying, there's a reasonable pressure to act in a way that prevents death.

The first question that comes up here, is what we count as saving a life, or why is it important to save a life.

If death is to mean one of our tests, someone meets the criteria of a lack of response to vocal or painful stimuli, someone without evidence of reflex activity, and an absence of central pulse, heart sounds, and respiratory effort. Would we say we have maximised the good, acted in a beneficial way, if after a surgery, the most you could say about someone was they had a central pulse, heart sounds, respiratory effort, and responded to vocal and painful stimuli? Or do we need something more than that to consider the outcome "good".

</div>

# Quality of Life, Disability Paradox


<div class="notes">

Again, following nothing more than our intuition, it's likely that many of us would say that it's not enough to end up in a situation, which doesn't meet the criteria of death but doesn't allow us to do anything else.

The idea is that there are certain things that are so important to us, that life without them would not be worth it.

What should we consider those aspects to be?

We can go back to what NICE mentioned earlier, the idea that we can find these aspects, measure them, and then compare them against the cost of a treatment to see if it's "worth it". This is the idea of a quality of life year measurement. NICE takes a very "functional" approach to the idea of quality of life, by which I mean life has more quality if you are able to do more. A life without an amputation is better, has more quality than a life without. A life with sight has more quality than a life without. A life without significant cognitive impairment has more quality than a life with such an impairment. A life where you are able to wash yourself, dress yourself, feed yourself, and do your own shopping is better than a life where you require somebody else to help you with those things.

It's here that difficulties already emerge. Firstly, lets ignore the cost effectiveness aspect, that generally wouldn't be crossing our mind in terms of whether to offer surgery or intensive care or not. "Quality of life" is a loaded term. Some ethicists recommend we ditch it as a concept, it is too close in their eyes to ideas of social worth, and who deserves care and who doesn't. Many of us who's intuitive belief is that of equality between people would be uncomfortable with the idea that our life without impairment has some better quality than another person.

So we could rephrase it. Talk about preferences instead of quality. Take an assumption that I would prefer to have two legs to one, or sight to none, or be "fully independent in my ADLs". This is the idea, that we can talk about what is the most good option, by knowing what people would prefer if given the choice. This isn't too far away from what writers like Rawls talk about.

Of surveys of populations, we know that most people will have the assumptions I gave there, that they'd prefer a life of impairment to a life without. That they feel they would be happier being without impairment and disability.
The problem now is thought, that if you ask people with impairments, you get a different answer. On average they're as happy as people without the impairment. 
This is the disability paradox, that we think life would be worse, to our unimpaired eyes, but it isn't if you ask the person with it. 

Now, it may be that if we went back to the idea of preferences, and said, would you prefer a life without an impairment, some people would say yes. But it's important to note that not all people will. The famous example would be the deaf community, and the choice to decline offers of corrective surgery or implantation, as there is a sense of the deaf community as a protected community, that there is more gained by being deaf than lost.

In emergencies though, it seems like maybe ideas of quality of life aren't as useful as we first think. When we attempt to make decisions with patients, we aren't often struggling with decisions about minimising impairment. Instead the question is, which would be preferable, survival with impairment, or no survival at all?

The trouble can then be, whose perspective of a lifes worth should we take? Knowing what we do about the perspectives of people without impairment, it's reasonable to think of scenarios where someone thinks a life with impairment would "not be worth it", declines surgery, and dies, but had they taken the surgery, after a period of readjustment, they would have considered their life to be worth it.

</div>

# Minimise Harm {data-background-iframe="https://callumgwtaylor.github.io/surgical_critical_ethics/diagrams/non-maleficence.html"}


<div class="notes">

If maximising good was the only relevant factor, then what we've seen so far might say we need to widen our options as to who we should offer treatment to. As the surgeons in the paper pointed out at the start, you've a chance with surgery and no chance or a worse chance without. Also it's likely that you've got a wider range of acceptable lives than you would think other wise. So go for it.

The difficulty though, is there's something on the other side of the seesaw here, that being the duty to avoid harm to the patient. It may be that for many people there is always a non-zero chance of some good resulting from surgery and critical care. However there may also be a large and growing chance of harm.

What might be the harms of going ahead with surgery?

It's reasonable to acknowledge that most of what we did in hospital, if we did without consent would leave us open to charges of assault. There are routine incursions into peoples integrity as a person, that are done because we think there is a reasonable chance there might be an outcome that's worth it.

What harms are there?

A lot of these come up after an operation, rather than necessarily during. That's as during your operation and you are anaesthetised. Afterwards though, to proceed with threatments in critical care, there can be multiple harms. Our interventions can be unpleasant and painful. People are weak, sedated, and to some extent chemically restrained. You will have people touching you in ways you wouldn't ask somebody to, you will be rolled after you soil the bed, you'll be slid around the bed by a bunch of strangers, you'll be hoisted up into the air to be lowered into a chair. You won't be able to speak because there's this tube in your mouth. You won't be able to understand whats going on around you because the medicines they give you fog your head, and theres all these alarms, and they're wearing masks over their mouths so you cant lip read. You don't get any sleep because there's always some emergency going on. The medicines they give you, combined with how sick youve been, mean you see things that aren't there, hear things that aren't there, and believe things that arent true. Generally these things are are all unpleasant.

Of the patients who do well, and recover from critical illness, there is a high rate of depression, there is a high rate of post traumatic stress disorder.

There are harms to critical care, that we accept because the good that can be acheived can be worth it.

What we've put there, is the harms experienced by those that survive.
There also though, is the potential harms for those that die. Even those who remain deeply sedated throughout their stay, and don't experience what i've described above. Population surveys back up our intuitive idea that there is something most people conceive of as a good death, and something we perceive as a bad death. In terms of deaths people would pick, in simplistic terms, nobody wants to die with a plastic tube down their throat. We want to be old, in our own bed at home, smiling peacefully, surrounded by the people we want to be there, with no alarms, no strangers in masks, no pain.

</div>

# Harms During ICU - Survivors

- Pain ~ 70% of ICU patients

- ETT
- Hallucinations
- Noise/No Rest
- Thirst
- Unable to talk
- Being afraid
- Shortness of breath

<div class="notes">

So the most common negative experience that people disclose about their ICU stay is pain. We've estimates of ~ 70% patients being in discomfort or pain during their ICU stay.

The things that cause pain that can be more specific to ICU include airway management, bronchoscopy, chest drain, central line insertion.

A 2004 study found half of patients report being in discomfort in ICU, when interviewed after their discharge. The real number is likely to be greater than that though, as you were more likely to recall discomfort if you were more likely to recall events in ICU accurately.

These options after pain are what were reported by patients in this 2004 study, as the most common causes of discomfort.
</div>

# Harms During ICU - Deaths



# Harms After ICU

- Requiring assistance with personal care - 20% at One Year
- Loss of work for patient and for family
- Worsened mobility
- Increased risk of pain
- Increased risk of depression
- Reduction in health related measures of quality of life
- Harms to Family

<div class="notes">

So a year after discharge from hospital, 1 in 5 ICU survivors require assistance, mostly from family members, in day to day activities like dressing, washing.

Around half of ICU survivors have a negative effect on their employment. Around half of families that provide care had to make changes to their own work. Around a quarter of families that provide care then have to borrow money, spend savings, or sell their home to pay for care.

Just under half of ICU survivors need help with mobility at one year (which is a doubling when we compare to them before critical illness)

Half of all survivors had reported being in moderate or extreme pain before ICU stay. This has increased to 70% when you look at the survivors at one year.

45% of ICU survivors had moderate or extreme depression, one year after their ICU stay. This is around a 50% absolute increase when compared to before admission.

When you compare the quality of life scores of the ICU survivors at one year to the normal population, you see a marked reduction.

Of course, these are all the harms as described by patients who have survived.
In addition. Of all patients who are admitted to ICU, 1/3 of family members have significant psychological distress in keeping with PTSD.
Half of family members of patients who die are found to have a complicated grief reaction. I don't mean to overstate these, I'm sure a great deal of that is due to their critical illness, rather than ICU stay. But it's unlikely to be all of it.

</div>

#  {data-background-iframe="https://callumgwtaylor.shinyapps.io/survival/"}


# Autonomy

<div class="notes">

So there are benefits to going ahead with the operation, and there are risks too. The benefits are probably greater than we initially would think, but so is the chance of harm.

The dilemma comes back here then, how do we determine what the right thing to do for a person is. Well the importance of respecting someone as individual in their own right comes to play here. We can ask the person what risk they are willing to accept.

To allow them to determine that though, they need to be aware of both sides. It may be that all they care about is the chance of survival. It might be though that life without a certain level of impairment may be more important than just life. It may be that they see the the idea of pain and discomfort in the recovery period as not worth the trade, or the concept of a death in ICU unacceptable.

They won't be able to fully make their own informed choice, without being fully informed about all potential outcomes. We can't support the principle of autonomy, by withholding information that is uncomfortable to tell them.

</div>


#  {data-background-iframe="https://callumgwtaylor.shinyapps.io/survival/"}


# Balancing These Decisions - MORAL BALANCE

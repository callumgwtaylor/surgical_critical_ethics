---
title: "Shared Ethical Dilemmas For Surgery and Critical Care"
author: "Callum Taylor"
date: "21/June/2021"
output:
  revealjs::revealjs_presentation:
    theme: solarized
    transition: none
    self_contained: false
    reveal_plugins: ["notes"]
---

# "Shared Ethical Dilemmas For Surgery and Critical Care"

### Scripts

```{r setup, include=FALSE}
knitr::opts_chunk$set(
  message = FALSE,
  warning = FALSE,
  include = FALSE
)
source("C:/Users/desktop-coll/Dropbox/Medicine/Academic.9.ICM/surgical_critical_ethics/presentation/diagrams/face_graph_function.R")
```

```{r survival_outcomes}
face_graph_function(
  patient_numbers = 35,
  plot_name = "last_year.svg"
)
face_graph_function(
  patient_numbers = 25,
  plot_name = "hospital_death.svg"
)
face_graph_function(
  patient_numbers = 33,
  plot_name = "survive_year.svg"
)
```

```{r qol_outcomes}
face_graph_function(
  patient_numbers = 25,
  plot_name = "hospital_readmissions.svg"
)
face_graph_function(
  patient_numbers = 25,
  plot_name = "adls.svg"
)
face_graph_function(
  patient_numbers = 33,
  plot_name = "lost_work.svg"
)
face_graph_function(
  patient_numbers = 50,
  plot_name = "mobility.svg"
)
face_graph_function(
  patient_numbers = 44,
  plot_name = "depression.svg"
)
face_graph_function(
  patient_numbers = 70,
  plot_name = "pain.svg"
)
```

```{r qol_outcomes_two}
face_graph_function(
  patient_numbers = 50,
  plot_name = "lost_work_families.svg"
)
face_graph_function(
  patient_numbers = 25,
  plot_name = "money.svg"
)
face_graph_function(
  patient_numbers = 33,
  plot_name = "ptsd.svg"
)
```

```{r qol_outcomes_three}
face_graph_function(
  patient_numbers = 70,
  plot_name = "pain.svg"
)
face_graph_function(
  patient_numbers = 50,
  plot_name = "discomfort.svg"
)
face_graph_function(
  patient_numbers = 50,
  plot_name = "grief.svg"
)
```


## Introduction

This is the title I was provided, shared ethical dilemmas for surgery and critical care.
It's important to be honest from the start and say that this talk won't be like the other talks in that it provides no answers as to what to do.

The point of a dilemma, what makes a dilemma a dilemma is that you find yourself in a situation where there are at least two reasonable arguments, to take two completely different courses of action. When it comes to a medical ethical dilemma that is shared by the surgical team and those of us working in critical care, the clearest example would be ethical dilemmas faced when treating the critically unwell surgical patient.

This talk is going to focus on the dilemma that all of us regardless of our level of experience have faced, approaching the situation where we try and weigh up reasons to continue, or reasons to stop certain hospital treatments, ones you may consider in an attempt to preserve someones' life.

As I said, I'm not going to give any answer here. My aim is to put forward an argument that they only way these decisions can be made with the greatest likelihood of doing what's best for an individual patient, is through discussion with them, with detail that we might find uncomfortable to provide. I'm also going to argue that as the professionals who know your patients best, you as surgeons are in the strongest position to have helpful and meaningful conversations with your patients to plan what's best for them.

In this talk I will explain that I think the main dilemma for surgeons and clinicians is to work out when to continue with life sustaining treatment and when to stop.

I want to put that I think that a major source of difficulty for us is not knowing what's for the best for the patient. I can then put that there is an easy way for us to have a better idea about what's best for that patient, and that's by talking to them about it. However talking to them about it only works if we come at it from the same understanding, from the shared common language.

I'll explain what my general understanding I think a patient should know to help make a decision.

I'll explain what I think we need to know about our patients to help us make our decisions.

I'll explain how we can use the ethical principles to lay out our argument
And I'll explain why I don't think they're set in stone.

I'll talk a bit about proportional discussion based decisions.

And a tiny bit about the law.

Stop means a lot of things.

It might mean, when do we withdraw invasive ventilation, stop inotropes, stop dialysis.
It might mean, when do we say we shouldn't start those things, or escalate the amount we are giving.
It might mean, when do we say we shouldn't go to theatre. Or that we limit our invasive approach in theatre, we'd fix one thing if we found it, we wouldn't do another, we would not support in critical care after theatre.

## Theory

> The dilemma at the base of intensive care is the tension between a right to life and a right to die
> [Hard Questiongs in Intensive Care. Dunstan. 1985]

To consider stopping, in whatever definition we've gone for, is to recognise that there is a balance to be made with all medical and surgical treatments.

Dunstan describes it as the competing duties to protect the rights to a good life and a good death.

### Ethical Systems 

The classic way any attempt to work out the right thing to do it to split it up into, is it the outcome of the action that's important, or is it the reasons we took that action that are what makes an action right or wrong.

<section data-background-video="diagrams/utility.mp4"
          data-background-video-loop=true data-background-video-muted>
<h2></h2>
</section>

#### Consequentialist [utility.mp4]

There are plenty of ways to split this up. The  most common form of a consequentialist approach seen, particularly in medicine, is to judge an act based on how much of a certain outcome it creates. The traditional way to do that is to say act in a way that creates the most happiness. Happiness is pretty much the same thing as the concept known as utility, which is where you get the idea of utilitarianism. The right thing to do is the one that maximises utility, or happiness. You can switch in any other outcome into here, so we can change our important outcome from happiness to lives saved. The right way to act is the way that will save the most lives.

<section data-background-video="diagrams/utility.mp4"
          data-background-video-loop=true data-background-video-muted>
<h2></h2>
</section>

##### Expected Utility [utility2.mp4]

We can then say that because we don't know for certain what is the outcome when we act, we only know how likely we guess an outcome will be, rather than talking about pure utility, we should talk about *expected utility*. When you are taking an expected utilitarian approach, you are saying the way to judge if an act is right or wrong, is by seeing if the act is the one that is most likely to give us the outcome we care about.

There are some problems that come up with this expected utilitarian approach. Firstly, it says the only thing that matters is how likely it is that someone survives, and what you do to achieve that goal is not important. Secondly, the only right approach is the one that is most likely to get the outcome you want. An alternative action, one that's pretty likely to give the outcome you want, but not as likely, is considered to be the ethically wrong thing to do.

#### Non-Consequentialist [utility2.mp4]

If you say this is rubbish, that the ends don't justify the means, that it's the reasons you act that are important, rather than the outcome of your actions, then you're taking a non-consequential, or deoontological approach. That might be any manner of approach, it might be that you think the most important thing is to respect someones humans rights, or to treat people with compassion, or to act in a way you think a good doctor would act (whatever that is). This may be a lot more nuanced, than just the looking at whether someone survives or dies. The difficulty here, is that if you're a strict non-consequentialist, then whether someone lives or dies does not affect whether an action is good or bad, or better or worse.

So, at this point, you might think like me, that both these approaches seem rubbish. You can't say only the outcomes matter and not the reasons you took an action. You also can't say in any situation there is only one acceptable action. You also cant say only the reasons matter and the consequences dont. Instead, if you look at our dilemma as it started, we think both the outcome of an action, and the reasons for an action are important.

#### Principlism

This is where alternative systems come into play. This is where we can talk about the approach you've probably been told is THE way to approach ethical dilemmas in medicine, the idea of principlism.

Principlism is a way of approaching ethical dilemmas in medicine, it allows you to take into account both outcomes and values.

We can see how taking a principlist approach allows us to take a more wideranging approach. Principlism says there's more than one approach to working out what's right and wrong. It's called a pluralist approach as it takes on a plurality of reasons. Classically the other systems I'd already described would be seen as absolutist, in that there's only one thing that decides if an outcome is right or wrong, and that thing is ABSOLUTE.

Whereas here in pluralism we can say that it's important to act in a way that save's someones life, that's maximising beneficence. But also you're respecting that person's human rights, that's maximising autonomy. You are also trying to avoid causing them pain, causing them suffering, in that maximising non-maleficence way.

- *Autonomy* - Respecting the person as a person with their own rights
- *Justice* - Treat people fairly
- *Beneficence* - Do good
- *Non-Maleficence* - Dont do bad

### Shared Morality? - House of Sand

> Based on our findings, we can conclude that the principles of biomedical ethics – in particular autonomy – have only a weak grounding in human moral psychology and thus in the common morality [@Christen2014]

These four principles seem reasonable to most of us. The rights of the individual, the importance of treating people fairly, a requirement to do good, and to avoid harm. But why these four? If you ask Beauchamp and Childress, the creators of the system of principlism, they turn to the idea of a "common morality". These four principles are THE four principles, because they come directly from a collective common morality. They are the four principles you could ask anyone, anywhere, and they would come up with them.

This has been criticised. Beauchamp and Childress are two affluent white male american academics. The likelihood that they've seen something from their particular perspective that happens to be shared with every human might be unlikely. Walker and Lovat, two affluent white australian academics, bring up a sociological point, that these men were trying to establish morals for  a medical community that was facing the aftermath of the tuskegee trials, a major failing in promoting autonomy of patients, and that this may have shaped their thoughts on the importance of ethical principles.

If you look at psychological studies of what a common morality is, you don't come up with the four principles. Christen's trial from 2014, that assessed ethical decision making in clinicians and those who worked in business found neither aligned with the four principles. Christen's work found a common morality in this group could be described as: respect, loyalty, and responsibility.

Now, this isn't to say that Beauchamp and Childress' system of ethical principles are wrong. Just that the reason they give for it being these four principles isn't true. We don't have a universal morality that says it only cares about these four things.

The way I see it. There's a great big mess of ethical factors that could be relevant to our decision. The four principles approach doesn't tell us anything fundamental about these factors. What it does though, is provide a nice sorting system for us to group aspects together and compare them against each other. I'd describe the four principles as a filling system, rather than the pillars we get taught.

### Alternative Systems

Principlism is a shared language in medicine. It doesn't really matter that it's maybe not grounded in what Beauchamp and Childress say it is, it's still what we all use. Interestingly, the piece from Christen does suggest that maybe medical practitioners came closer to the four principles than those in business did, as the medics had been taught the four principles in uni, and that had shaped their ways of thinking.

We aren't going to get away from principlism, and I don't think we need to. It's a good labelling system.

### Law

#### Human Rights Act

> Article 2 Right To Life
> Article 3 Right to protection from torture (mental or physical), inhuman or degrading treatment or punishment 

I'm not going to talk about the law too much, beyond point out how it stands as a safe limiter either end of the debate. 
To follow the law is to fall within the range of what we may consider acceptable in society at any one time.

An example of this would be the classic case of Airedale vs Bland. This was the first case to clearly demonstrate in UK law the ability to withdraw care that is keeping someone alive in a persistent vegetative state. Tony Bland was a young man critically injured in the Hillsborough football disaster, and the case was establishing the right to withdraw artificial nutrition and hydration that was keeping him alive in a persistent vegetative state. So the law places a guide here, there isn't an obligation to pursue the prolongation at all costs.

The reason I've put these two Articles of the Human Rights Act up there, is to show how our ethical dilemmas can be seen within a single piece of UK statute. The Human Rights Act of 1998, our implementation of the European Convention on Human Rights, shows that the state has a duty to protect an individuals right to life (their article 2 right). The state also though, has a duty to protect someone from going through torture, inhuman, or degrading treatment. We'll look at some aspects of ICU care that could be interpreted by some as potentially infringing a person's article 3 rights, in attempt to protect their article 2 rights. There's also Article 5 protecting your liberty from detention, something the chemical and physical restraints of surgery and critical care sometimes come up against.

## Practice - Situation

So going back to our dilemma, when should we stop? When should we not intervene with potentially life saving treatments?

Starting from a consequentialist approach. We can imagine that whatever we do, one of these four options will be the outcome for the patient:

- A Good Life
- A Bad Life
- A Good Death
- A Bad Death

Our choices, our interventions, can affect the likelihood of which outcome we get. Some of these will be desirable and some won't be. However the labelling of any outcome is going to depend on the individual affected by it. What makes a life good or not is uncertain. What makes a death good or not is uncertain. How desirable they are is uncertain.

There is at some unknown point for every patient, a tipping point in chance where an intervention they consider worth it, becomes one they don't want to go ahead with. That may be because it doesn't give them a good enough chance at their good outcome. Or it may be because it gives too high a chance of a bad outcome. Where the tipping point is for the patient is unlikely to be the same as where we place it.

### What Are The Chances?

In determining where this tipping point is, we need to have our best guess at what is likely to occur. Of course we also need to be honest that sometimes our best guess is pretty rubbish.

#### Last year of life

So this is the first point that I'd like to bring. The patients that we meet are more likely to be close to the end of their life than we think.
These statistics are from FICM's Working Group on End of Life care.

#### Hospital Inpatient <br> Last Year Of Life (1 in 3){data-background="diagrams/last_year.svg"}

35% of inpatients in hospital are in their last year of life. Now of course that includes all patients, and doesn't quite hit the population we are considering for surgery and intensive care.

#### ICU Survival

Of those who we consider the potential benefits are worth it to try a spell in ICU:

#### Admitted To ICU <br> Die In Hospital (1 in 5){data-background="diagrams/hospital_death.svg"}

One in five of them don't survive hospital.

#### Survive ICU And Hospital <br> Die Within The Year (1 in 5){data-background="diagrams/survive_year.svg"}

Of those who do survive to get home, one in five of them are dead within the year. And these two points are of the patients who we've already thought are "well enough" for ICU.

#### Readmitted To Hospital Within 3 Months (1 in 4) {data-background="diagrams/hospital_readmissions.svg"}

Of these patients who survive ICU, and get back home, a quarter are back in hospital within 3 months.

#### Consolidation{data-background-iframe="https://callumgwtaylor.shinyapps.io/survival/"}

*[link](https://callumgwtaylor.shinyapps.io/survival/)*

To consolidate this, we'll guess some chances and take some from scottish cohort data.
If we have our high risk cohort and operate on 100 of them.
Say 95% survive their operation, and 90% of them survive their ICU stay, and 88% of them survive their hospital stay, and 87% of them survive one year, and 73% of them survive the next three years to get to four years post op. Then less than half of the patients we started with are alive at 4 years. It was only 2/3 who made it to a year. Those last few numbers that seemed all to specific, are from a scottish study on survival after surgical stays in critical care.


### Life Quality - The Individual

Then just some further aspects;

#### Require Assistance With ADLs at 6 months (1 in 4) {data-background="diagrams/adls.svg"}

1 in 4 patients will need assistance with ADLs at the 6 months after discharge mark.

#### Lost Work at 12 Months (1 in 3) {data-background="diagrams/lost_work.svg"}

1 in 3 will have less work at 12 months

#### Need Help With Mobility (1 in 2) {data-background="diagrams/mobility.svg"}

1 in 2 will need some form of mobility aid at 6 months

#### Experiencing Moderate/Extreme Depression at 12 Months (44%) {data-background="diagrams/depression.svg"}

Over a third, close to half will have symptoms of moderate or extreme depression at 12 months

#### Experiencing Moderate/Extreme Pain at 12 Months (70%) {data-background="diagrams/pain.svg"}

The majority will have symptoms of moderate or extreme pain at 12 months

### Life Quality - Societal, Family, Relationships

#### Families Providing Care  <br> Lose Work (1 in 2) {data-background="diagrams/lost_work_families.svg"}

Half of families will have lost income at the 12 month mark, either due to family members cutting back work to provide care, or related to the patient's lost income

#### Families Providing Care <br> Spend Savings/Borrow Money/Sell House (1 in 4) {data-background="diagrams/money.svg"}

Of those families that are providing care. 1 in 4 either have to spend savings, borrow money, or sell their house.

#### Families w/ PTSD after admission (1 in 3) {data-background="diagrams/ptsd.svg"}

ICU is not benign for families. 1 in three families will have a relative with PTSD as a result of the ICU admission

### Summarise Our Situation - Do These Things Matter?

So these things are all about survival. There's good evidence that when it comes to health related quality of life measures, that patients have a lower "Quality of life" after surviving critical illness .

But, these are the patients who survived. When you look at whether these patients consider it worth it, they generally say it was. The choice after all is between a lower quality of life or death.

What am I trying to get across here?

Probably that we can over estimate the likelihood that someone will survive intensive care.

Probably that we over estimate the amount that people will be able to do if they survive intensive care.

Probably that we under estimate the harms of intensive care

Probably that most measures of quality of life, under estimate how satisfied someone is with their life.

So Back To The Dilemma. We're looking here at the question of when is enough intervention enough? Which of the outcomes do we think our intervention will result in, a good life or bad life, a good death or bad death. Are the chances of any of these unacceptably high or unacceptably low? We've got a bit more knowledge now to adjust the chances of these.

### Critical Illness and Death - The Experience, Patient Preferences

This last bit is looking at how patients' decisions change with more accurate information.

> patients who did not receive information on prognosis perceived a much longer life expectancy... In addition, these patients were less likely to perform advanced planning and more likely to select aggressive treatment over comfort-oriented care

[https://link.springer.com/article/10.1245/s10434-016-5564-x#Sec3]

Patients are going to hope for the best when it comes to their condition and survival. Without accurate information they will assume they have a better chance, or longer, then they actually have.

This assumption that they're in a healthier place will result in them being more likely to pick more aggressive treatments.

> In one study of 590 patients with metastatic cancer, Enzinger et al. reported that the majority (71 %) of patients wished to be informed of their prognosis; despite this, the authors noted that only 18 % actually received an estimate of life expectancy

[https://link.springer.com/article/10.1245/s10434-016-5564-x#Sec3]

This is not because patients with life limiting illnesses are attempting to hide away from the truth. The majority want to know. It's us who aren't telling them.

> In a separate prospective longitudinal cohort study of 332 patients with advanced cancer and caregivers, Wright et al. noted that end-of-life discussions did not lead to worry or depression but instead resulted in less aggressive medical care, longer hospice stays, and better quality of life among both patients and caregivers

[https://link.springer.com/article/10.1245/s10434-016-5564-x#Sec3]

We often don't tell them the reality due to this fear of removing all hope, of worsening the situation. Now this seems like a reasonable concern, and their are certainly ways that such a conversation could harm a patient. However, when a conversation occurs, it results in a better quality of life for a patient, without worsening depression.

> Patients with inaccurate prognostic awareness were significantly more likely than those with accurate understanding to prefer ICU care, intubation, and mechanical ventilation than to reject these LSTs.

[https://pubmed.ncbi.nlm.nih.gov/26386187/]

>  Patients express a wide variety of preferences to limit treatments and avoid unacceptable outcomes that have not been discussed with their surgeon.

[https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4949135/]

>  The proportion of patients choosing LSTs [life-sustaining-treatments]decreased in line with an increase in the likelihood that the outcome of the treatment would be death or functional and/or cognitive impairment. Similarly, the proportion of patients choosing a treatment increased in line with the life extension that was expected to result from it.
[https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7795676/]

Patients are going for these more aggressive treatments, as mentioned before, as they're starting from a place thinking they are healthier than they are. When patients are told the likelihood of their treatment being successful reducing, unsurprisngly they are less likely to pick it.

>  Patients who reported having discussed their wishes for EOL care with a physician (39%, 125 of 322 patients) were more likely to receive care that was consistent with their preferences, both in the full sample (odds ratio [OR] = 2.26; P < .0001) and among patients who were aware they were terminally ill (OR = 3.94; P = .0005). 

[https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2834470/]

As mentioned above, talking with clinicians about what patients want, meant they were more likely to get treatments that go along with their values

> Patients who recognized their terminal illness were more likely to prefer symptom-directed care (83%). However, some patients who were aware they were terminally ill wished to receive life-extending care (17%, 21 of 121 patients).

[https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2834470/]

Of course, I don't want to pretend that every patient wants us to stop. Not even every patient who knows they are dying wants to stop. Some will see benefits to treatment and desire to contine. 17% in that paper above. That raises it's own dilemma.

And understandably, the majority of patients who have multimorbidity, but not necessarily a life limiting illness, will desire life sustaining treatments regardless of the chance of success. Again though, the chance of someone refusing that treatment goes up with the level of information they are provided.
By giving someone full information about the potential outcomes of any intervention, you are more likely going to give them a treatment in keeping with their own values and beliefs

#### Why might an ICU Death be a "Bad Death"

#### Discomfort + Pain In ICU (70%)  {data-background="diagrams/discomfort.svg"}

We cannot ask those who didn't survive ICU, but yhe majority of patients who survive ICU describe pain and discomfort in the ICU.

- ETT
- Hallucinations
- Medical Activity
- Noise/No Rest
- Pain
- Thirst
- Unable to talk
- Shortness of breath
- Being Afraid

#### Complicated Grief (50%) {data-background="diagrams/grief.svg"}

In addition to that, beyond the patients experience, 50% of families whose relative dies in ICU describe symptoms of complicated grief a year later.

### What might be a good death?

- Death can be good if it doesn't rob us of future valuable life,
- If it is associated with comfort and consolation
- If it is consistent with the patients values and preferences
- If it is not distressing for the individuals family and for those caring for them [@Wilkinson2020]

## MORAL Balance - Outcomes of Relevance{[Moral Balance](http://www.moralbalance.org/framework/analyses/)}

**M**ake sure of facts
**O**utcomes of **R**elevance for **A**gents
**L**evel out the arguments

in a **Balance** box

I thought after all the vagueness we should try and provide something useful as a system. The Moral Balance system has been put forward by intensivists working in the UK, as a way to gather and structure your thoughts when attempting to make an ethical decision in medicine, using the four principles.

Ultimately, what we are doing is formalising what we've been talking about here. In discussion with the patient, their relatives, and your colleagues, you are working out what is important to everyone. You're then seeing how these factors come up against one another, and trying to work out how to either achieve the most important of them, or not cause the greatest harms.

These could be recognising a patients autonomy, even in situations where they may lack capacity, they are still able to express a preference. These can be aiming for beneficence through presevivng life, whilst avoiding non-malefiecence (pain, discomfort, particular interventions a patient had previously refused)

# Summary

The reason ethical dilemmas are ethical dilemmas, is because their are multiple valid ways of viewing them, that often conflict with one another.

There isn't a right answer in whether to treat or not.

What we can say though, is that the right thing for a patient is likely to be something in keeping with their own values. It's through decent discussion with our patients we get to what is likely right for them. Patients desire these conversations and if handled well, these conversations help rather than harm.

A patient is only able to make decisions in keeping with their values if we know enough about what's important to them, and they know the reality of their treatment.

Our patients are a lot closer to the end of their life then we often acknowledge.

Surviving critical illness is difficult, and often comes with long term consequences in physical and psychological health, as well as family and social relationships.

The majority of patients would choose to go through it, and the majority would consider it worth it.

However the more patients know about life sustaining treatments, and their own chances, the less likely they are to pick them. Those with life limiting illnesses (and again, 1 in 3 hospital inpatients is in their last year of life)that refuse these treatments often have a greater quality of life than those that go ahead with them. 
# Coffee and Coding (public presentations)

The repository to host the slides and code that are presented at the MoJ Coffee & Coding sessions.

This repo is public to allow wider access of the MoJ C&C materials. Therefore, a limited number of sessions are not available in this repo. If you are a member of the moj-analytical-services organisation on github, you can access all sessions [here](https://github.com/moj-analytical-services/Coffee-and-Coding).

## Contents

- [Contact](#contact)
- [Aim](#aim)
- [Notes for presenters](#notes-for-presenters)
- [Contributing to this repository](#contributing-to-this-repository)
- [Schedule](#schedule)

## Contact

Need more information? Interested in presenting or helping to organise meetings? Get in touch with our mailbox:
Coffee-and-Coding(at) justice.gov.uk

The MoJ Coffee and Coding Committee are:
* Katharine Breeze
* Matt Funnell
* Neil Wilkins
* Charlotte Wallace
* David Hawes

## Aim

The aim of the MoJ Coffee & Coding meetups is to nurture, enable and encourage a vibrant, supportive and inclusive coding community at MoJ. Coffee & Coding provides a regular opportunity for people within MoJ who are interested in coding to:
* share skills and knowledge
* showcase their work and projects
* provide advice and guidance to each other
* network and get to know each other

Code can be shared from any language - whether R, SAS, SQL, Python, or other more specialised languages.

The format is generally 30-40 minutes for a presentation, followed by time for questions. The presentations usually take the form of a demonstration of a tool or technique and/or a show and tell of work done within the department using these methods. In future we hope to invite external speakers and provide a Code Surgery, to give an opportunity for people to pose any coding related queries/ruminations/ideas to the gathered group. 

Watch this space for developments!

## Notes for presenters

Thank you for volunteering to present at Coffee & Coding! Here is a checklist of things a member of the Coffee & Coding team may ask you.

* A few weeks before the presentation, please provide a short description of your talk that we can include in the calendar invite & on our Coffee and Coding repositories
* Please make sure you're able to present over Skype or Teams to ensure your presentation is flexible working friendly
* If there's any material you'd like to be available to participants during the session (for example if you are doing a tutorial), make sure you add this to our repositories before the session

Let us know if you're happy for us to:
* Share the talk description and/or material on our [publically available repo](https://github.com/moj-analytical-services/Coffee-and-Coding-public) as well as our [private repo](https://github.com/moj-analytical-services/Coffee-and-Coding) viewable to anyone with an Analytical Platform account. (Check with your line manager if you're in any doubt)
* Record the session to share with anyone unable to attend
* Invite analysts from other departments along (if your talk is likely to be of interest to analysts outside of MoJ)
* Offer to give your presentation at another Government Department C&C session - this is a great way to get your material out to a wider audience, practice your presenting skills and meet other coders across Government!

If you have any questions or problems the best person to speak to is the member of the team who has organised your talk. If they are away you can email our mailbox [Coffee-and-Coding@justice.gov.uk](Coffee-and-Coding@justice.gov.uk). If urgent, you may want to email another member of the team directly to ensure we don't miss your email.

## Contributing to this repository

If you have presented or demonstrated at a session, please consider sharing your presentation in the repository. To add new content please work on a branch and submit a pull request. The branch will then be reviewed by an administrator before merging.

Contributions should adhere to the following conventions:

* Name folders as follows: YYYY-MM-DD_NAME OF PRESENTATION
* Where possible all folders should contain a README.md with notes or a brief explanation and contact details for more information

## Schedule

Date | Time | Room | Title | Presenter | Abstract
---------------|-----|-----|------------|------------------|------------------------------------
Monday 9th November 2020 | 15:00 | Teams | Transitioning from SAS to the Analytical Platform | Nikki Rayner, Marco Surace, George Papadopoulos | This talk will provide project overviews from three MoJ analysts on their experience of transitioning SAS processes to R and Python – including things to consider when project planning; transitioning the code;, and lessons learned. The examples are planned to cover both the implementation of a 1-1 transfer of SAS code to the platform, and more exploratory conversion processes – i.e. the cases where analysts are presented with a SAS system for which there is minimal documentation or understanding of the code’s purpose.
Thursday 8th October 2020 | 14:00 | Teams | An Introduction to Github | Kristina Gray, Ellie Martin and Ben Lavelle  | This Coffee and Coding session will give you an introduction to using GitHub. We will explain the importance of using GitHub and demonstrate examples of how it can be used across DASD, with the main focus on RStudio. The session will also include how to store changes to your code, how to work collaboratively and the QA process. The aim is to encourage analysts to use GitHub to enhance analytical projects and provide some useful tips and tricks to start the process.
Monday 7th September 2020 | 14:00 | Teams | NLP for text classification in R | Richard McCormack | This talk will deliver a basic overview of using R for Natural Language Processing (NLP). We will focus on the common problem of classifying text into different groups. We will discuss general approaches to this and look at specific examples of how we can implement NLP text classification in R.
Thursday 30th July 2020 | 11:00 | Teams | [HTML publishing on gov.uk through R](https://github.com/moj-analytical-services/mojspeakr) | Francesca Bryden | Publishing in HTML format on Gov.uk is of growing interest to statisticians, but is challenging due to the nature of the Whitehall publishing platform and the Govspeak language. This talk discusses the development, building and use of the mojspeakr package to manage HTML publishing through R Markdown in a simple and reproducible way. 
Wednesday 22nd July 2020 | 14:00 | Teams | [splink: Probabilistic record linkage and deduplication at scale](https://github.com/moj-analytical-services/splink) | Theodore Manassis and Sam Lindsay | This talk will introduce the open source python package `splink`, developed by the Internal Data Linking team in DaSH as part of the ADR UK Data First project to link administrative datasets in the MoJ and externally. We will describe some of the problems of linking individuals between datasets (or within a single datasets) and how the `splink` package goes about tackling these problems, before showing a demo Jupyter notebook running the code using fake data. All code shown is publicly available on GitHub along with lots of other useful examples and documentation for anyone who wishes to get started using `splink`.
Wednesday 1st July 2020 | 11:00 | Teams | Setting up a data flow with Microsoft Power Automate | Andrew Billington | Microsoft Power Automate is a point and click workflow automation tool to automate repetitive tasks and connect services without having to write an API. The presentation will cover the basics of setting up a flow, potential use cases, and a demonstration of how we have used Power Automate to enable real-time data collection for our COVID-19 response.
Monday 27th April 2020 | 15:00 | Skype | Introduction to Airflow | Karik Isichei | Airflow is a Python package that allows users to group a set of tasks (that may or may not be dependent on one another) into a single pipeline. This pipeline can be set to run on a regular schedule managed by Airflow. We’ll run through the basics of what Airflow is, some of the key ideas behind the scheduler and how to set up your own automated tasks and pipelines on the Analytical Platform. 
Tuesday 14th April 2020 | 14:30 | Skype | Python webapps using Plotly Dash | Jamie Fraser | This presentation covers the basics of creating a dashboard in python using Plotly Dash. Learn how to create simple interactive webapps, multiple page webapps and how to work with Dash on the platform. 
Friday 27th March 2020 | 14.00 | Skype | [Introduction to spatial analysis in R](https://github.com/Anthony-HTF/Spatial_Analysis_R) | Anthony Ash (MHCLG) | With increasing use of open source software it is becoming easier to represent data geographically. This talk will introduce you to the latest ways of interrogating geographical data in R.
Friday 13th March 2020 | 13.00 | 5.28A (102PF) | Scraping, Cleaning and Measuring the Readability of GOV.UK Content with R | Sandy Li | Abstract available only to MoJ Colleagues.
Wednesday 26th February 2020 | 14.00 | 1.02 (10SC) | Modelling in R; Github Collaboration; and the Sentencing Review 2019 | Matt Funnell | This presentative covers work towards the ad hoc Sentencing Review 2019 - in particular the process of converting an excel model to R; and working collaboratively in GitHub at pace. Presentation only available internally.
Tuesday 4th February 2020 | 11.00 | Conf 1A (102PF) | Linear Programming in R | David Hawes | This presentation covers the use of linear programming techniques in R, and how this was used to support analysis for the Prison Estate Transformation Programme.
Tuesday 14th January 2020 | 11:00 | 2.20 (10SC) | HMPPS Workforce Statistics RAP | Chloe Pugh | Reproducible Analytical Pipelines (RAP) are being encouraged across government to improve reproducibility and auditability of statistical publications, along with saving time and freeing up resources for other work. In this session I’ll talk about how my team and I automated the HMPPS workforce statistics quarterly publication. We’ll also have a go at our very own mini RAP project, so bring your laptops if you’d like to take part.
Friday 6th December 2019 | 14:00 | Conf 5 (102PF) | Testing as part of an analytical project | Theodore Manassis | This talk will give an introduction to implementing testing in an analytical project from a RAP perspective, with a focus on Python techniques. It will cover what to test and the different type of tests that can be applied, as well as continuous integration. 
Thursday 7th November 2019 | 14:00 | Conf 12 (102PF) | [Rapid Data Visualisation with R](https://github.com/billster45/rapid_r_data_vis_book) | Bill Cockerill | This coffee & code aims to give you several simple R code methods you can use straight away to more rapidly explore data visually with fewer confusing error messages. For each simple example further code is demonstrated that can turn a quick exploration into publication ready plots. | Yes
Wednesday 30th October 2019 | 15:30 | 9.14 (102PF) | Introduction to Conda | Calum Barnett | Conda is a package and environment management system. It has several benefits over other similar tools, such as packrat: it can install packages and manage dependencies across multiple languages at once, including R and Python; it’s fast, as packages are precompiled; conda environments, which keep track of all the packages you are using, can also be easily exported and shared allowing others to run your code and reproduce results. In the session, we’ll go cover how to install packages and how to manage environments when working across multiple projects.
Tuesday 15th October 2019 | 15:00 | 1.03 (10SC) | Introduction to pandas | Jo Li How Cheong  | Following the previous 'Intro into Python' sessions, we will go through a code along session on how to use 'Pandas', a widely used Python library which makes manipulation and analysis of panel type data much easier.
Friday 4th October 2019 | 11:00 | 1.11 (10SC) | Introduction to Python II | Karik Isichei | Continuing on from Karik's previous session on Python last month. 
Monday 23rd September 2019 | 11:00 | 2.20 (10SC) | {drake} package | Matt Dray (GDS) | At its simplest, the {drake} package records the dependencies between the files in your analysis. If you change something, {drake} only re-runs the parts that need to be re-run, saving time and reducing the chance for error. This could be especially useful for Reproducible Analytical Pipelines (RAP) in a government context.
Tuesday 3rd September 2019 | 14:00 | 1.05 (10SC) | Introduction to Python | Karik Isichei | This C&C session will go through a code along session on how to use python from the very basics.  This session is for those who have never used python and want to get comfortable with the language or if you want a refresher. Things that this session will cover: the basics of JupyterLab, defining variables and python data types (including lists, tuples and dictionaries), how to layout your code, string manipulation, for loops, if statements and reading in and writing out data. There is a fair amount there so this might get covered in multiple sessions, but there will be a notebook to use with all the content. All of the above is written in base python so all you need to code along is git, Python and JupyterLab (if you’re on the platform you’ll have those already). For those not on the platform the relevant repo will be public so that you can also code along.
Tuesday 13th August 2019 | 11:00 | 1.05 (10SC) | Predictive Modelling in R: a caret machine learning case study | Martine Wauben | A lot of an analyst’s life is spent preparing data and setting up complicated models. Why not have R do that for you, and take advantage of advanced machine learning methods? This session takes you through the caret package for preprocessing, modelling, and evaluating models. 
Tuesday 9th July 2019 | 15:00 | 2.20 (10SC) | Start using data.table | Megan Stodel | When such a large part of working with data is data wrangling, it makes a huge difference which tools you use. In this session I’ll be advocating for the package data.table, which allows users to explore and manipulate datasets in R with great efficiency. I hope to convince you to give it a try! Aimed at people with little or no experience using the package, this will cover what data.table is, what its advantages are and its basic usage. There will also be a short practical section for you to try out your new skills, so bring your laptops with RStudio ready if you want to take part in that. 
Monday 24th June 2019 | 14:00 | 9.14 (102PF) | Introduction to Machine Learning in R | George Papadopoulos | As analysts, many of us are already using some form of  Machine Learning on a daily basis, from Time Series Analysis to Neural Networks and Support Vector Machines this type of data processing is poised to take over key aspects of our way of work in the years to come. This short introductory session aims at covering a few of the basic concepts of Machine Learning as well as showcasing the MLR package in R and how it can be used to implement all stages of the Machine learning workflow. The package offers a modular way of implementing a great variety of techniques to perform anything from basic regression to more complex pattern recognition tasks.
Wednesday 29th May 2019 | 15:00 | 2.20 (10SC) | Data Engineering | Karik Isichei| The data engineering function within the MoJ has been going for a while but unless you are directly affected by the stuff we are working on you probably don't know what we do. I'll be giving a presentation / overview of what we do, what tools we are building (to hopefully make your life easier) and what that means for DASD as a whole
Monday 13th May 2019|14:30|1.05 (10SC)|[Developing packages in R](https://docs.google.com/presentation/d/1NGAQyQj9NCaw-TcagylltV82vNqJZnBp5aKK_N9QQ_8/edit#slide=id.g10d42026b8_2_0)|Duncan Garmonsway (GDS)|Prime Package Delivery with R: Send your code to someone busy. Things to do and avoid doing when writing code to be used twice.
Fri 26th April 2019|10:00|7.29B (102PF)|Text Mining and Topic Analysis in R|Bryce Millard|This presentation will cover work in R carried out to perform text mnining of the ad hoc commissioning e-mails to the MI Delivery Team in HMCTS. Specifically this will cover topic analysis of natural language by applying an LDA approach to commissioning e-mails.|
Tues 16th April 2019|14:00|2.19 (10SC)|Presentation available only to MoJ Colleagues|Rachel Forty|Abstract available only to MoJ Colleagues.|
Tues 2nd April 2019|10:00|1.13 (10SC)|[Writing Functions in R](https://github.com/moj-analytical-services/writing_functions_in_r)|Katharine Breeze & Chloe Pugh|Knowing how to write your own functions is a great skill to add to your R toolbox. Writing functions can save you time, reduce the risk of errors, and make your code easier to understand. To find out more, come along to this session where we'll cover why, when and how to write your own functions, sharing plenty of examples to help you get started.
Weds 13 Mar 2019|10:00|1.04 (10Sc)|Regular Expressions|Megan Stodel|Regex are ways to describe patterns in text, which can then be used for pattern matching. They have a range of applications in code, but also a number of idiosyncrasies and can look quite opaque, so it’s definitely worth coming along if you are unfamiliar with this useful technique. The session will focus on the use of regex in R, but the principles apply in many languages with just some tweaks in approach, so even if you use other languages this will still be relevant! The first part of the session will be a presentation on regex, which will be followed by time for attendees to tackle some regex challenges, so bring your laptops
Weds 20 Feb 2019|13:00|3.29A (102PF)|Interfacing with Excel and R|Matt Funnell|Reading in excel/csv data is often the first step in producing analysis in R; and writing data back to excel is a key component of producing automated tables or customer-facing outputs. This presentation will cover the interface between R and Excel – in particular reading and writing csv and xlsx files; package options; and how to create formatting in excel using R. 
Tue 11 Dec 2018|14:00|8.29A (102PF)|Christmas trees|Megan Stodel|In this hands-on session, put your coding skills into practice and make your best attempt at creating a Christmas tree. There'll be some ideas for getting started, then it'll be over to you. This session is ideal if you are interested in finessing your plotting skills or experimenting with data visualisation. And although examples will be in R, feel free to use other tools if you are more familiar with them or find them more useful. 
Tue 20 Nov 2018|15.45|1.17 (10Sc)|Looping in SAS|Paul Tuxworth|This presentation is planned to cover the use of explicit and implicit looping and explicit and implicit output in SAS. As base SAS already has an implicit looping mechanism and  implicit rules about output of records, how these interact with the explicit looping structures in base SAS (such as do…end) can be confusing. My presentation will include some examples of implicit and explicit looping and output. This is useful when grouping, aggregating or summarising data in base SAS.
Tue 16 Oct 2018|13:00| |Desk Utilisation Analysis in R Shiny|Thomas Hirsch|Motion sensors have been installed under desks and in meeting rooms at the MoJ, to better understand how the space in its headquarters is being used. I will explain how I provided analytical support to this by building a dashboard in R Shiny, allowing customers to explore the data and automatically generate reports.
Mon 24 Sept 2018|15:30| |JSAS Metadata Web App|Hannah Bougdah|Creating a web app for metadata - the presentation covers how I created a web app using R markdown so that JSAS will be able to share their metadata across ASD.
Fri 19 July 2018|15:00| |JSAS Hackathon Review|Phil Hall|A review of the Coding Standards Hackathon held in May 2018, including approaches to coding, methods for collaborating on coding and initial work done to create common functions across JSAS.
Tue 26 June 2018|15:00| |R Shiny Coroner Dashboard|Matt Funnell|The presentation gives an introduction to the use of R Shiny to create an interactive data visualisation tool, from a beginner’s perspective.


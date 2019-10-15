# Can {drake} RAP?

[Matt Dray](https://twitter.com/mattdray) is a [data scientist](https://xkcd.com/1838/) at [Government Digital Service](https://dataingovernment.blog.gov.uk/2018/10/08/data-science-is-a-team-sport/) (GDS). He believes in reproducibility, which is where [the {drake} package](https://docs.ropensci.org/drake/) for R comes in.

At its simplest, the {drake} package records the dependencies between the files in your analysis. If you change something, {drake} only re-runs the parts that need to be re-run, saving time and reducing the chance for error. This could be especially useful for [Reproducible Analytical Pipelines](https://ukgovdatascience.github.io/rap-website/) (RAP) in a government context.

The talk is based around [a blog post](https://www.rostrum.blog/2019/07/23/can-drake-rap/) and [some demo code in a GitHub repo](https://github.com/matt-dray/drake-egg-rap).

If you're lucky, [you'll have access to the Google Slides version of this presentation](https://docs.google.com/presentation/d/1r8Zz5ZBsAI2trq_pbra4u6lKmsbuM7l-tlr1oq1_sJI/edit?usp=sharing), which has presenter notes. If not, you'll have to make do with the PDF version in this repo.

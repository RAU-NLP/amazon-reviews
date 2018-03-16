[![Build Status](https://travis-ci.org/RAU-NLP/amazon-reviews.png)](https://travis-ci.org/RAU-NLP/amazon-reviews)

### Training a fastText model in a GitHub repo's continous build
*Prediction model for sentiment analysis on 4M Amazon reviews with 91.6% accuracy in 10 minutes*  

This repo trains and tests a [fastText](https://github.com/facebookresearch/fastText) prediction model automatically on submit.

The model is supervised classification for sentiment analysis.  The dataset included in the repo is 4M Amazon reviews, theoretically in English, in the fastText format.  The reviews were crawled from the web, 1- and 2-star reviews labelled `positive`, 4- and 5-start `negative`, and 3-star reviews were discarded.  It is split into train (3.6M reviews) and test (0.4M).  It is 0.5B GB when compressed.  To get around GitHub's file limit of 100MB, the files were `split` and a re-joined with `cat`.

On submit the scripts are run by Travis CI, a continuous integration service free for open-source repos.  With the default parameters, the resulting prediction model's accuracy on the test set is 91.6%., and each run takes 10 to 15 minutes.  (On a modest MacBook with 8GB memory and 2GHz processor, it is 2 to 3 times faster.)  There is caching so that preparing the dataset and building fastText can be skipped on most runs.

#### Viewing the results

Visit [travis-ci.org/RAU-NLP/amazon-reviews](https://travis-ci.org/RAU-NLP/amazon-reviews/builds), click a build and view the *Job log*
```
TRAINING MODEL...
Read 289M words
Number of words:  5165173
Number of labels: 2
Progress: 100.0% words/sec/thread: 2959292 lr:  0.000000 loss:  0.238979 ETA:   0h 0m

TESTING MODEL...
N	400000
P@1	0.916
R@1	0.916
Number of examples: 400000
```

#### Running on your own repo

[Fork this repo](https://github.com/RAU-NLP/amazon-reviews/fork) and [add Travis CI](https://docs.travis-ci.com/user/getting-started/) to your repo

#### Playing with the parameters

Edit the [`fasttext supervised` parameters](https://github.com/facebookresearch/fastText#full-documentation) in `run.sh` in your repo

To avoid a run on minor updates, add `[skip ci]` or `[ci skip]` to the commit message.

#### Running locally

```
sh init.sh
sh run.sh
```

[![Build Status](https://travis-ci.org/RAU-NLP/amazon-reviews.png)](https://travis-ci.org/RAU-NLP/amazon-reviews)

### Sentiment analysis on a few million Amazon reviews with fastText

This repo builds fastText and trains and tests a model automatically on submit.

The model is supervised classification for sentiment analysis.  The dataset included in the repo is 4M Amazon reviews, theoretically in English.  The reviews were crawled from the web, 1- and 2-star reviews labelled `positive`, 4- and 5-start `negative`, and 3-star reviews were discarded.  It is split into train (3.6M reviews) and test (0.4M).  It is 0.5B GB when compressed.  To get around GitHub's file limit of 100MB, 

##### To see the results:

Visit [travis-ci.org/RAU-NLP/amazon-reviews](https://travis-ci.org/RAU-NLP/amazon-reviews)

##### To run locally:

```
sh init.sh
sh run.sh
```

##### To copy:

[Fork this repo](https://github.com/RAU-NLP/amazon-reviews/fork) and [add Travis CI](https://docs.travis-ci.com/user/getting-started/) to your fork

##### To play with the parameters:

Edit the [`fasttext supervised` parameters](https://github.com/facebookresearch/fastText#full-documentation) in `run.sh` in your fork

To avoid a run on minor updates, add `[skip ci]` or `[ci skip]` to the commit message.

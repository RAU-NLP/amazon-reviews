The dataset is from [kaggle.com/bittlingmayer/amazonreviews/kernels](https://www.kaggle.com/bittlingmayer/amazonreviews/kernels) (493MB compressed, 1.8GB uncompressed).

To get around GitHub's 100MB file limit, we ran:

```
split -b 99m train.ft.txt train.chunk.
split -b 99m test.ft.txt test.chunk.
```

Therefore we must now run:
```
cat train.chunk.* > train.ft.txt
cat test.chunk.* > test.ft.txt
```


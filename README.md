# ASGAN
Feature-Level Similarity Score (FLSS) and the proposed AFPS dataset for "Attribute-Guided Sketch Generation (FG 19, Oral) [Arxiv Paper](https://arxiv.org/abs/1901.09774)" by [Hao Tang](http://disi.unitn.it/~hao.tang/), Xinya Chen, [Wei Wang](https://weiwangtrento.github.io/), [Dan Xu](http://www.robots.ox.ac.uk/~danxu/), [Jason J. Corso](http://web.eecs.umich.edu/~jjcorso/), [Nicu Sebe](http://disi.unitn.it/~sebe/), [Yan Yan](https://userweb.cs.txstate.edu/~y_y34/). 

## FLSS Metric

### Prerequisites
- Matlab
- VLFeat (download the latest binary package)

## AFPS dataset

For CUFS, CUFSF, EPRIP or PRIPVSGC, the datasets must be downloaded beforehand. Please download them on the respective webpages. Please cite their papers if you use the data. 

You can download the corresponding attributed version using the following script. 
```
bash ./AFPS/download_asgan_dataset.sh dataset_name
```

- `CUFS`: 94 trianing, 94 testing.
- `CUFSF`: 562 training, 561 testing.
- `EPRIP`: 70 training, 16 testing.
- `horse2zebra`: 70 training, 16 testing.


## Citation
If you use this code or dataset for your research, please cite our paper.

```
@inproceedings{tang2019attribute,
  title={Attribute-Guided Sketch Generation},
  author={Tang, Hao and Chen, Xinya and Wang, Wei and Xu, Dan and Corso, Jason J and Sebe, Nicu and Yan, Yan},
  booktitle={FG},
  year={2019}
}

```

## Acknowledgments
This code borrows heavily from [VLFeat](http://www.vlfeat.org/).

[![License CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC4.0-blue.svg)](https://github.com/Ha0Tang/ASGAN/blob/master/LICENSE.md)
![Python 3.6](https://img.shields.io/badge/python-3.6-green.svg)
![Packagist](https://img.shields.io/badge/Pytorch-0.4.1-red.svg)
![Last Commit](https://img.shields.io/github/last-commit/Ha0Tang/ASGAN)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-blue.svg)](https://github.com/Ha0Tang/ASGAN/graphs/commit-activity)
![Contributing](https://img.shields.io/badge/contributions-welcome-red.svg?style=flat)
![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)
[![GitHub issues](https://img.shields.io/github/issues/Naereen/StrapDown.js.svg)](https://GitHub.com/Ha0Tang/ASGAN/issues/)

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
- `PRIPVSGC`: 70 training, 16 testing.


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
This code borrows heavily from [VLFeat](http://www.vlfeat.org/). We acknowledge the National Institute of Standards and Technology Grant 60NANB17D191 for
funding this research. We also acknowledge the gift donation from Cisco, Inc for this research.

## Related Projects

**[SelectionGAN](https://github.com/Ha0Tang/SelectionGAN)**

## Contributions
If you have any questions/comments/bug reports, feel free to open a github issue or pull a request or e-mail to the author Hao Tang ([hao.tang@unitn.it](hao.tang@unitn.it)).

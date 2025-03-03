# dry_cond_fx_estimate: Audio Effect Estimation Under a Dry Signal Condition Different from the Original Performance

This is a project of audio effect estimation under a dry signal condition different from the original performance, i.e., to estimate the optimal effect parameters to reproduce the target wet signal using a different dry signal from original performance.
The Models are neural networks built for each dry signal and effect type.
The programs in this repository include the process of building, training, and evaluating models, but not trained models files.

This project is a part of the project "fx_estimate".
This program uses a dry signal dataset [gt_dataset](https://github.com/okitayouichi/gt_dataset) and a wet signal dataset [gtfx_dataset](https://github.com/okitayouichi/gtfx_dataset).

## Setup

This program has only been tested on Ubuntu 22.04.4 LTS, Python 3.10.12, and CUDA 12.2.

The root directory of this project (`dry_cond_fx_estimate`) must be directly under the root directory of the parent project `fx_estimate`.
Therefore, the directory structure of fx_estimate should be as follows:
```
fx_estimate
├── gt_dataset
├── gtfx_dataset
└── dry_cond_fx_estimate
```


First, in the src/ directory, create a file named `.env` with the following content:
```bash
PROJECT_PATH=/path/to/fx_estimate/
```
, where `/path/to/fx_estimate/` should be replaced with the path in your environment.
Then, run the following in command line:
```bash
cd src/
python3 -m venv .venv
. .venv/bin/activate
python3 -m pip install -r requirements.txt 
chmod u+x run.sh
```
You may need to use a different version of the libraries, especially those related to CUDA, than the ones listed in `requirements.txt` to suit your environment.


## Train & Evaluate Model
```bash
cd src/
./run.sh exp_num
```
, where `exp_num` is an integer (< 100) representing the serial number of the experiment and is a required argument.

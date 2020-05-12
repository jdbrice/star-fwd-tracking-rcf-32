
This provides some examples for running the tracking code on RCF.
Note that this is a 32 bit build of the code and does have a few known issues compared to the 64bit version. Keep this in mind.


## How to use this:

1. checkout this project from github
```sh
git clone https://github.com/jdbrice/star-fwd-tracking-rcf-32.git
cd star-fwd-tracking-rcf-32
```


2. setup bash shell environment:
```sh
bash

bash-4.2$ source rcf_env.sh
```
NOTE: `bash-4.2$` is shown to make it clear youo should be in a bash prompt, the command is `source rcf_env.sh`


3. Check that it is correct:
```sh
bash-4.2$ which root4star
> /gpfs01/star/pwg/jdb/FWD/cmake-test/star-install-SL19e-32-Release/sl74_gcc485/bin/root4star
```

4. Look at examples (below), run code with :
```sh
bash-4.2$ ./run.sh <N_EVENTS> <input.fzd> <config.xml> 
```

NOTE: you need to run from this directory, so that the hidden file `.rootrc` is automatically loaded when you start ROOT. Otherwise you will get errors.

NOTE: if you want to run over multiple input files you can see an example script in `test/`

NOTE: The RCF setup does not yet support building / developing on the code. If you need this use the docker environment.

Check https://github.com/jdbrice/star-fwd-dev for more info



## Examples:
In the below: 
- `N` is the number of events to run over.
- `input.fzd` is the input simulation file of your choice.

#### Test track fitting with perfect track finding (using MC information):
```sh
./run.sh N input.fzd config/mc_seed.xml
```
Note: this uses MC track finding as the input for the fitting. But it also uses the MC pt as the seed for the track fitting so it is the most ideal case. You can turn off the mc pt seed etc. 


#### Simple config to test track **finding** in Pythia events (slightly optmized) :
```sh
./run.sh N input.fzd config/config_pythia_track_finding.xml
```
Note: these are examples, you may need to update z-location or other parameters for optimal results. Conosult the main github readme for details about the configuration.

#### Simple config to test track **finding and fitting** in Pythia events (slightly optmized) :
```sh
./run.sh N input.fzd config/config_pythia_track_finding.xml
```


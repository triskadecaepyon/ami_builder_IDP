# ami_builder_IDP
Packer templates to build AMIs with the Intel® Distribution for Python* built-in. 

- Utilizes [Hashicorp's Packer](https://www.packer.io) to automate the building of Amazon Machine Images with Intel's accelerated Python distribution.  
- Templates for for both Python 2 and 3 variants, in addition to _core_ and _full_ package combos.  

As easy as making the following call to build the AMI:
```
packer build idp_ami_ubuntu3_full.json 
```
Once completed, packer will shut down the instance used to build this AMI, and return to you the AMI id as a build artifact.

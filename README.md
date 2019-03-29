Quotation generator [![Star this repo](http://githubbadges.com/star.svg?user=ProgrammingSam&repo=quotation-generator&style=flat)](https://github.com/ProgrammingSam/quotation-generator) [![Fork this repo](http://githubbadges.com/fork.svg?user=ProgrammingSam&repo=quotation-generator&style=flat)](https://github.com/ProgrammingSam/quotation-generator/fork) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)
===========

Generate a quotation in PDF from a LaTeX template file.

Dependencies :
-------------

- ruby;
- ruby gems : rake, yaml, erb;
- pdflatex;

Usage :
-------------

- Edit the config.yaml file with your company information;
- Edit the config.yaml file with your quotation information;
- Edit/add your clients to the config.yaml file;
- Invoke the tasks defined in the rakefile to generate a quotation :

```
rake -T
rake clean              # Remove any temporary products
rake clobber            # Remove any generated file
rake quotation[client]  # Generate a 'quotation' for a client
```

**Note :** for zsh users, use `rake quotation\[client\]` synthax.

Feel free to fork and custom.

[Buy me a coffee](https://buymeacoff.ee/ProgrammingSam)

[![Resume](https://forthebadge.com/images/badges/built-with-love.svg)](https://programmingam.io)

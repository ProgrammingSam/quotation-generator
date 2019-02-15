Invoice generator [![Star this repo](http://githubbadges.com/star.svg?user=ProgrammingSam&repo=invoice-generator&style=flat)](https://github.com/ProgrammingSam/invoice-generator) [![Fork this repo](http://githubbadges.com/fork.svg?user=ProgrammingSam&repo=invoice-generator&style=flat)](https://github.com/ProgrammingSam/invoice-generator/fork) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)
===========

Generate an invoice in PDF from a LaTeX template file (belgian legal format).

Dependencies :
-------------

- ruby;
- ruby gems : rake, yaml, erb;
- pdflatex;

Usage :
-------------

- Edit the config.yaml file with your company information;
- Edit the config.yaml file with your invoice information;
- Edit/add your clients to the config.yaml file;
- Invoke the tasks defined in the rakefile to generate an invoice :

```
rake -T
rake clean            # Remove any temporary products
rake clobber          # Remove any generated file
rake invoice[client]  # Generate an 'invoice' for a client
```

**Note :** for zsh users, use `rake invoice\[client\]` synthax.

Feel free to fork and custom.

[Buy me a coffee](buymeacoff.ee/ProgrammingSam)

[![Resume](https://forthebadge.com/images/badges/built-with-love.svg)](https://programmingam.io)

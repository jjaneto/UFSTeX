
# UFSTeX

Modelo LaTeX para relatórios de pesquisas da Universidade Federal de Sergipe

## Do que isso se trata?

O UFSTeX é uma adaptação dos modelos [abntex2][abn] e do [abntex2-DCOMP-UFS][dcomptex] para a escrita de relatórios de pesquisa da Universidade Federal de Sergipe.

Para adicioná-lo ao seu projeto, recomendo a utilização de editores onlines, tais como o [Overleaf][] ou [ShareLaTeX][sharelatex]. Com o seu projeto criado, basta incluir os arquivos .csl e .sty ao diretório do projeto e setar a classe utilizada como **ufstex**, a exemplo do código abaixo:

```tex
\documentclass[opções quaisquer]{ufstex}
```
Existem diferentes tipos de projetos (PIBIC, PIBIT, etc); diferencie os projetos adicionando o seu tipo entre os colchetes do código acima com `picvol` ou `pibic`, etc. Exemplo:

```tex
\documentclass[pibic]{ufstex}
```



[overleaf]: https://www.overleaf.com/
[sharelatex]: https://www.sharelatex.com/
[abn]: https://www.abntex.net.br/
[dcomptex]: https://git.dcomp.ufs.br/kalilbispo/abntex2-DCOMP-UFS
# UFSTeX

Modelo LaTeX para relatórios de pesquisas da Universidade Federal de Sergipe

## Do que isso se trata?

O UFSTeX é uma adaptação dos modelos [abntex2][abn] e do [abntex2-DCOMP-UFS][dcomptex] para a escrita de relatórios de pesquisa da Universidade Federal de Sergipe.

Para adicioná-lo ao seu projeto, recomendo a utilização de editores onlines, tais como o [Overleaf][] ou [ShareLaTeX][sharelatex]. Com o seu projeto criado, basta incluir os arquivos .csl e .sty ao diretório do projeto e setar a classe utilizada para **ufstex**, a exemplo do código abaixo:

```tex
\documentclass[opções quaisquer]{ufstex}
```
Existem diferentes tipos de projetos (PIBIC, PIBIT, etc); diferencie-os adicionando o seu tipo entre os colchetes do código acima com `picvol` ou `pibic`, etc. Ainda, especifique se o relatório é o `parcial` ou `final`. 

Não deixe de declarar essas opções, pois elas são fundamentais. **Caso elas não sejam declaradas, um erro será lançado**. Exemplo:

```tex
\documentclass[pibic, final]{ufstex}
```

### Documentação

A documentação principal está descrita na [documentação da abntex2][abndoc]. Recomendo sempre ler em caso de dúvidas, pois lá contém quase que todas as informações necessárias para a construção do relatório. Para o UFSTeX, especificamente, dividi um resumo em 3 diferentes partes: 

* [Elementos pré-textuais][pretextuais]: inclui a capa (elemento externo), sumário, etc.
* [Elementos textuais][textuais]: o texto em si.
* [Elementos pós-textuais][postextuais]: apêndices, etc.

[overleaf]: https://www.overleaf.com/
[sharelatex]: https://www.sharelatex.com/
[abn]: https://www.abntex.net.br/
[dcomptex]: https://git.dcomp.ufs.br/kalilbispo/abntex2-DCOMP-UFS
[abndoc]: http://ctan.mirrors.hoobly.com/macros/latex/contrib/abntex2/doc/abntex2.pdf
[pretextuais]: https://github.com/jjaneto/UFSTeX/blob/master/pretextuais.md
[textuais]: https://github.com/jjaneto/UFSTeX/blob/master/textuais.md
[postextuais]: https://github.com/jjaneto/UFSTeX/blob/master/postextuais.md

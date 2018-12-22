# Elementos Pré-textuais

Antes de definir qualquer elemento pré-textual, é necessário informar os dados do relatório que irão para a capa. Você pode fazer isso utilizando os comandos `\periodobolsa{}{}`, `\titulo{}`, `\area{}`, `\subarea{}`, `agencia{}`, `\autor{}`, `\orientador{}` e `\especialidade{}`. O valor de cada campo é definido entre os `{}`. Os comandos `\subarea{}` e `\especialidade{}` são opcionais e você não precisa utilizar o comando `\agencia{}` caso seja PICVOL.

Comandos e valores definidos corretamente? Agora é só utilizar o comando `\imprimircapa` para que o $\LaTeX$ digitalize capa do seu relatório.

A [ABNT NBR 10719:2015][norma2015] define que são elementos pré-textuais alguns dos citados abaixo, obrigatórios em um relatório científico:

1. Resumo na língua vernácula: o resumo pode ser escrito através do comando `resumo`, como o exemplo abaixo:
```tex
\begin{resumo}
aqui vai o seu resumo.
\end{resumo}
``` 
2. Lista de figuras: para a impressão da lista de figuras, utilize o comando `\listoffigures*`. A explicação para o comando `\pdfbookmark[0]{\contentsname}{toc}` fica em versões futuras da documentação :stuck_out_tongue_closed_eyes:, mas o seu uso é opcional.
```tex
\pdfbookmark[0]{\listfigurename}{lof}
\listoffigures*
\cleardoublepage
```
4. Lista de tabelas: da mesma forma que as figuras, o comando `\listoftables*` imprime as tabelas escritas no documento.
```tex
\pdfbookmark[0]{\listtablename}{lot}
\listoftables*
\cleardoublepage
```
5. Sumário: o sumário é impresso através do comando `\tableofcontents*`.
```tex
\pdfbookmark[0]{\contentsname}{toc}
\tableofcontents*
```

Ao final disso tudo, o seu código pré-textual deve ser similar ao exemplo abaixo:

```tex
\periodobolsa{Abril 2017}{Agosto 2018}
\titulo{Schin: por que tão ruim?}
\area{Cerveja}
\subarea{Pilsen}
\agencia{COPES}
\orientador{Zeca Pagodinho}
\autor{Joaquim}
\especialidade{Levantamento de Copo}

\imprimircapa

\begin{resumo}
aqui vai o seu resumo.
\end{resumo}

\pdfbookmark[0]{\listfigurename}{lof}
\listoffigures*
\cleardoublepage

\pdfbookmark[0]{\listtablename}{lot}
\listoftables*
\cleardoublepage

\pdfbookmark[0]{\contentsname}{toc}
\tableofcontents*
\cleardoublepage
```


[norma2015]: https://metodologiaunirio.files.wordpress.com/2016/10/nbr-10719-versao-2015.pdf

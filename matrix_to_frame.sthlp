{smcl}
{* *! version 1.0  12fev2022}{...}

{title:Matrix to Frame}

{pstd}
{hi:matrix_to_frame} {hline 2} puts the contents of a specified matrix into a new Stata frame alongside its rownames and colnames. {it:Requires Stata 16.}

{marker syntax}{...}
{title:Syntax}

{pstd}
  {cmd:matrix_to_frame} {help matrix:{it:matrix}}, {bf:{ul:f}rame(}{help frame:{it:newframe}}{bf:)} {bf:[{ul:var}names]}


{title:Options}

{pstd}
{bf:{ul:f}rame(}{help frame:{it:newframe}}{bf:)}: specifies a new frame where the matrix is to be put.

{bf:[{ul:var}names]}: uses column names as variables names. {it:By default, the command puts column names in variable labels only. This option is turned off by default because column names in matrices are much more flexible than variable names. When using this option, the command first converts each column name to name conventions in Stata. In case of conflict (for example, with reserved variable names), the command skips the renaming routine, but still assigns variable labels accordingly.}


{title:Author}

{pstd}
{it:Daniel Alves Fernandes}{break}
European University Institute

{pstd}
daniel.fernandes@eui.eu

{smcl}
{* *! version 1.0  12fev2022}{...}

{title:Matrix to Frame}

{pstd}
{hi:matrix_to_frame} {hline 2} puts the contents of a specified matrix into a new Stata frame alongside its rownames and colnames. {it:Requires Stata 16.}

{marker syntax}{...}
{title:Syntax}

{pstd}
  {cmd:matrix_to_frame} {help matrix:{it:matrix}}, {bf:[{ul:f}rame(}{help frame:{it:newframe}}{bf:)]}


{title:Options}

{pstd}
{bf:{ul:f}rame(}{help frame:{it:newframe}}{bf:)}: specifies the frame name where the matrix is to be put.


{title:Author}

{pstd}
{it:Daniel Alves Fernandes}{break}
European University Institute

{pstd}
daniel.fernandes@eui.eu

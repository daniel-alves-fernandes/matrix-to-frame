# Matrix to Frame
Puts the contents of a specified matrix into a new Stata frame alongside its rownames and colnames.

## Installation

To install this package run the following command:

```
net install matrix_to_frame, from("https://raw.githubusercontent.com/daniel-alves-fernandes/matrix-to-frame/main/") 
```

## Example

```
sysuse auto

reg price mpg rep78
matrix_to_frame r(table), into(results)
```

Frame `results` contains the following data:

   rows  |       mpg  |    rep78  |   cons
---------|------------|-----------|---------
b        | -271.6425  | 666.9568  | 9657.755 
se       |  57.77115  | 342.3559  |  1346.54 
t        | -4.702044  | 1.948138  | 7.172273 
pvalue   |  .0000136  | .0556529  | 7.99e-10 
ll       | -386.9864  | -16.5789  |   6969.3 
ul       | -156.2987  | 1350.492  | 12346.21 
df       |        66  |       66  |       66 
crit     |  1.996564  | 1.996564  | 1.996564 
eform    |         0  |        0  |        0 
  
  
Alternatively:
  
```
matrix_to_frame r(table)', into(results2)
```

The frame `results2` contains the following data:

  rows |          b |        se |          t |    pvalue |         ll |         ul |  df |      crit |  eform 
-------|------------|-----------|------------|-----------|------------|------------|-----|-----------|--------
   mpg |  -271.6425 |  57.77115 |  -4.702044 |  .0000136 |  -386.9864 |  -156.2987 |  66 |  1.996564 |      0 
 rep78 |   666.9568 |  342.3559 |   1.948138 |  .0556529 |   -16.5789 |   1350.492 |  66 |  1.996564 |      0 
 _cons |   9657.755 |   1346.54 |   7.172273 |  7.99e-10 |     6969.3 |   12346.21 |  66 |  1.996564 |      0 



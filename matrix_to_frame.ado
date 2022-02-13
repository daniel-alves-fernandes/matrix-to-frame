/******************************************************************************
matrix_to_frame.ado

version 1.1

author: Daniel Fernandes
contact: daniel.fernandes@eui.eu
******************************************************************************/


capture: program drop matrix_to_frame
program define matrix_to_frame

  syntax anything(name=matrix id="matrix"), Frame(string) [VARnames]

  version 16


  local matrix_name: display subinstr("`matrix'","'","",.)
  confirm matrix `matrix_name'

  confirm new frame `frame'

  tempname temp
  matrix `temp' = `matrix'
  local rows "`: rowfullnames `temp''"
  local cols "`: colfullnames `temp''"
  local row_n "`: rowsof `temp''"
  local col_n "`: colsof `temp''"

  frame create `frame'
  frame `frame'{
    quietly: svmat `temp', names(c)

    * Row names
    quietly: gen rows = "", before(c1)
    forvalues i = 1/`row_n'{
      local val "`: word `i' of `rows''"
      quietly: replace rows = "`val'" in `i'
    }

    * Colnames
    forvalues i = 1/`col_n'{
      local val "`: word `i' of `cols''"
      label variable c`i' "`val'"
      if ("`varnames'" == "varnames"){
        local val: display strtoname("`val'")
        capture: rename c`i' `val'
      }
    }
  }
end

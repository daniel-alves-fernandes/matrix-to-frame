/******************************************************************************
matrix_to_frame.ado

version 1.0

author: Daniel Fernandes
contact: daniel.fernandes@eui.eu
******************************************************************************/


capture: program drop matrix_to_frame
program define matrix_to_frame

  syntax anything(name=matrix id="matrix"), Frame(string)

  version 16


  local matrix_name: display subinstr("`matrix'","'","",.)
  confirm matrix `matrix_name'

  confirm new frame `frame'

  matrix to_frame = `matrix'
  local rows "`: rowfullnames to_frame'"
  local cols "`: colfullnames to_frame'"
  local row_n "`: rowsof to_frame'"
  local col_n "`: colsof to_frame'"

  frame create `frame'
  frame `frame'{
    svmat to_frame

    * Row names
    gen rows = "", before(to_frame1)
    forvalues i = 1/`row_n'{
      local val "`: word `i' of `rows''"
      replace rows = "`val'" in `i'
    }

    * Colnames
    forvalues i = 1/`col_n'{
      local val "`: word `i' of `cols''"
      local val: display strtoname("`val'")
      capture: rename to_frame`i' `val'
      if (_rc == 198) rename to_frame`i' _`val'
    }
  }
end

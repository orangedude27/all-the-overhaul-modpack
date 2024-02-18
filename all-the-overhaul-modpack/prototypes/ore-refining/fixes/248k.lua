-- Remove pure to molen/plate recipes
removeRecipesByPattern("^fi[%-_]arc[%-_]pure")
removeRecipesByPattern("^fi[%-_]cast[%-_]pure")
removeRecipesByPattern("^fi[%-_]purify[%-_]%a+[%-_]recipe$")
removeRecipesByPattern("^el[%-_]arc[%-_]pure")
removeRecipesByPattern("^el[%-_]cast[%-_]pure")
removeRecipesByPattern("^el[%-_]purify[%-_]%a+[%-_]recipe$")
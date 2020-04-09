insertBlankLineUnder <- function() {
  # Get current active document context
  doc = rstudioapi::getActiveDocumentContext()

  # Extract the current cursor position
  current_line = unname(rstudioapi::primary_selection(doc)$range$start[1])

  # Create a new position and navigate to it
  newpos = rstudioapi::document_position(current_line+1, 1)
  rstudioapi::setCursorPosition(newpos)

  # Insert a blank line
  rstudioapi::insertText(newpos, '\n')

  # Shift the cursor back up 1 line
  rstudioapi::setCursorPosition(newpos)
}

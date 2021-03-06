.. raw:: html

    <h1>Actions</h1>
    <h2>application</h2>
    <table>
        <tr>
            <td><a name="#application/debug"><h4>debug</h4></a></td>
            <td>Does nothing, but a good place for breakpoints when debugging Merman.</td>
        </tr>
        <tr>
            <td><a name="#application/quit"><h4>quit</h4></a></td>
            <td>Quits the application. Shows confirmation if the document has unsaved changes.</td>
        </tr>
        <tr>
            <td><a name="#application/save"><h4>save</h4></a></td>
            <td>Save the document at the current path.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>array</h2>
    <table>
        <tr>
            <td><a name="#array/copy"><h4>copy</h4></a></td>
            <td>Copy the selected elements.</td>
        </tr>
        <tr>
            <td><a name="#array/cut"><h4>cut</h4></a></td>
            <td>Copy and delete the selected elements.</td>
        </tr>
        <tr>
            <td><a name="#array/delete"><h4>delete</h4></a></td>
            <td>Delete the selected elements.</td>
        </tr>
        <tr>
            <td><a name="#array/enter"><h4>enter</h4></a></td>
            <td>Enter the first selected element.</td>
        </tr>
        <tr>
            <td><a name="#array/exit"><h4>exit</h4></a></td>
            <td>Exit the array.</td>
        </tr>
        <tr>
            <td><a name="#array/gather_next"><h4>gather_next</h4></a></td>
            <td>Gather the next element from the selection. Makes the gathered element the leading edge.</td>
        </tr>
        <tr>
            <td><a name="#array/gather_previous"><h4>gather_previous</h4></a></td>
            <td>Gather the previous element from the selection. Makes the gathered element the leading edge.</td>
        </tr>
        <tr>
            <td><a name="#array/insert_after"><h4>insert_after</h4></a></td>
            <td>Insert a gap after the selection.</td>
        </tr>
        <tr>
            <td><a name="#array/insert_before"><h4>insert_before</h4></a></td>
            <td>Insert a gap before the selection.</td>
        </tr>
        <tr>
            <td><a name="#array/move_after"><h4>move_after</h4></a></td>
            <td>Move the selection after the next element.</td>
        </tr>
        <tr>
            <td><a name="#array/move_before"><h4>move_before</h4></a></td>
            <td>Move the selection before the next element.</td>
        </tr>
        <tr>
            <td><a name="#array/next"><h4>next</h4></a></td>
            <td>Select the next part in the atom.</td>
        </tr>
        <tr>
            <td><a name="#array/next_element"><h4>next_element</h4></a></td>
            <td>Select the next element, deselecting everything else.</td>
        </tr>
        <tr>
            <td><a name="#array/paste"><h4>paste</h4></a></td>
            <td>Replace the selected elements with the copied elements</td>
        </tr>
        <tr>
            <td><a name="#array/prefix"><h4>prefix</h4></a></td>
            <td>Wrap the lead selected element with a prefix gap.</td>
        </tr>
        <tr>
            <td><a name="#array/previous"><h4>previous</h4></a></td>
            <td>Select the previous part in the atom.</td>
        </tr>
        <tr>
            <td><a name="#array/previous_element"><h4>previous_element</h4></a></td>
            <td>Select the previous element, deselecting everything else.</td>
        </tr>
        <tr>
            <td><a name="#array/release_next"><h4>release_next</h4></a></td>
            <td>Remove the next element from the selection. Makes the following selected element the lead.</td>
        </tr>
        <tr>
            <td><a name="#array/release_previous"><h4>release_previous</h4></a></td>
            <td>Remove the previous element from the selection. Makes the following selected element the lead.</td>
        </tr>
        <tr>
            <td><a name="#array/suffix"><h4>suffix</h4></a></td>
            <td>Wrap the lead selected element with a suffix gap</td>
        </tr>
        <tr>
            <td><a name="#array/window"><h4>window</h4></a></td>
            <td>Restrict the view to the tree rooted at the selected lead element.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>atom</h2>
    <table>
        <tr>
            <td><a name="#atom/copy"><h4>copy</h4></a></td>
            <td>Copy the child atom.</td>
        </tr>
        <tr>
            <td><a name="#atom/cut"><h4>cut</h4></a></td>
            <td>Copy and delete the child atom.</td>
        </tr>
        <tr>
            <td><a name="#atom/delete"><h4>delete</h4></a></td>
            <td>Delete the child atom (leaves a gap in its place).</td>
        </tr>
        <tr>
            <td><a name="#atom/enter"><h4>enter</h4></a></td>
            <td>Enter the child atom.</td>
        </tr>
        <tr>
            <td><a name="#atom/exit"><h4>exit</h4></a></td>
            <td>Exit the parent atom.</td>
        </tr>
        <tr>
            <td><a name="#atom/next"><h4>next</h4></a></td>
            <td>Select the next part in the parent atom.</td>
        </tr>
        <tr>
            <td><a name="#atom/paste"><h4>paste</h4></a></td>
            <td>Paste the copied document subtree as an atom. This replaces the current child atom. If the clipboard does not hold a single parsable subtree, this fails.</td>
        </tr>
        <tr>
            <td><a name="#atom/prefix"><h4>prefix</h4></a></td>
            <td>Wraps the child atom in a prefix gap.</td>
        </tr>
        <tr>
            <td><a name="#atom/previous"><h4>previous</h4></a></td>
            <td>Select the previous part in the parent atom.</td>
        </tr>
        <tr>
            <td><a name="#atom/suffix"><h4>suffix</h4></a></td>
            <td>Wraps the child atom in a suffix gap.</td>
        </tr>
        <tr>
            <td><a name="#atom/window"><h4>window</h4></a></td>
            <td>Restrict the view to the tree of the child atom.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>editor</h2>
    <table>
        <tr>
            <td><a name="#editor/click_hovered"><h4>click_hovered</h4></a></td>
            <td>Click the hovered element.</td>
        </tr>
        <tr>
            <td><a name="#editor/redo"><h4>redo</h4></a></td>
            <td>Redo the last undone action.</td>
        </tr>
        <tr>
            <td><a name="#editor/scroll_next"><h4>scroll_next</h4></a></td>
            <td>Scroll in the forward transverse direction.</td>
        </tr>
        <tr>
            <td><a name="#editor/scroll_next_alot"><h4>scroll_next_alot</h4></a></td>
            <td>Scroll alot in the forward transverse direction.</td>
        </tr>
        <tr>
            <td><a name="#editor/scroll_previous"><h4>scroll_previous</h4></a></td>
            <td>Scroll in the backward transverse direction.</td>
        </tr>
        <tr>
            <td><a name="#editor/scroll_previous_alot"><h4>scroll_previous_alot</h4></a></td>
            <td>Scroll alot in the backward transverse direction.</td>
        </tr>
        <tr>
            <td><a name="#editor/scroll_reset"><h4>scroll_reset</h4></a></td>
            <td>Adjust the scroll so the selection is visible.</td>
        </tr>
        <tr>
            <td><a name="#editor/undo"><h4>undo</h4></a></td>
            <td>Undo the last action.</td>
        </tr>
        <tr>
            <td><a name="#editor/window_clear"><h4>window_clear</h4></a></td>
            <td>Remove view restrictions.</td>
        </tr>
        <tr>
            <td><a name="#editor/window_down"><h4>window_down</h4></a></td>
            <td>If the view is restricted, move the root of the view down towards the selection, away from the document root.</td>
        </tr>
        <tr>
            <td><a name="#editor/window_up"><h4>window_up</h4></a></td>
            <td>If the view is restricted, move the root of the view up towards the document root.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>gap</h2>
    <table>
        <tr>
            <td><a name="#gap/choose"><h4>choose</h4></a></td>
            <td>Fill the gap with the selected type.</td>
        </tr>
        <tr>
            <td><a name="#gap/choose_%s (%s = index)"><h4>choose_%s (%s = index)</h4></a></td>
            <td>Fill the gap with the choice at the specified index, numbered from 0.</td>
        </tr>
        <tr>
            <td><a name="#gap/next_choice"><h4>next_choice</h4></a></td>
            <td>Select the next choice.</td>
        </tr>
        <tr>
            <td><a name="#gap/previous_choice"><h4>previous_choice</h4></a></td>
            <td>Select the previous choice.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>lua actions module</h2>
    <table>
        <tr>
            <td><a name="#lua actions module/%s (%s = lua action id)"><h4>%s (%s = lua action id)</h4></a></td>
            <td>Run the Lua function with the specified id.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>modes module</h2>
    <table>
        <tr>
            <td><a name="#modes module/mode_%s (%s = mode id)"><h4>mode_%s (%s = mode id)</h4></a></td>
            <td>Switch to the mode with the specified id.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
    <h2>primitive</h2>
    <table>
        <tr>
            <td><a name="#primitive/copy"><h4>copy</h4></a></td>
            <td>Copy selected text.</td>
        </tr>
        <tr>
            <td><a name="#primitive/cut"><h4>cut</h4></a></td>
            <td>Copy the selected text and delete.</td>
        </tr>
        <tr>
            <td><a name="#primitive/delete_next"><h4>delete_next</h4></a></td>
            <td>Delete the selection or following character.</td>
        </tr>
        <tr>
            <td><a name="#primitive/delete_previous"><h4>delete_previous</h4></a></td>
            <td>Delete the selection or preceding character.</td>
        </tr>
        <tr>
            <td><a name="#primitive/exit"><h4>exit</h4></a></td>
            <td>Exit the primitive.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_next"><h4>gather_next</h4></a></td>
            <td>Add the following character to the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_next_line"><h4>gather_next_line</h4></a></td>
            <td>Add the next line to the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_next_line_end"><h4>gather_next_line_end</h4></a></td>
            <td>Extend the selection to the end of the current line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_next_word"><h4>gather_next_word</h4></a></td>
            <td>Add the next word to the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_previous"><h4>gather_previous</h4></a></td>
            <td>Add the preceding character to the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_previous_line"><h4>gather_previous_line</h4></a></td>
            <td>Add the previous line to the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_previous_line_start"><h4>gather_previous_line_start</h4></a></td>
            <td>Extend the selection to the beginning of the current line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/gather_previous_word"><h4>gather_previous_word</h4></a></td>
            <td>Add the preceding word to the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/join"><h4>join</h4></a></td>
            <td>Join the selected lines or the next line with the current line if no lines are selected.</td>
        </tr>
        <tr>
            <td><a name="#primitive/line_begin"><h4>line_begin</h4></a></td>
            <td>Move the cursor to the start of the line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/line_end"><h4>line_end</h4></a></td>
            <td>Move the cursor to the end of the line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/next"><h4>next</h4></a></td>
            <td>Select the next part of the atom.</td>
        </tr>
        <tr>
            <td><a name="#primitive/next_element"><h4>next_element</h4></a></td>
            <td>Move the cursor forward one character.</td>
        </tr>
        <tr>
            <td><a name="#primitive/next_line"><h4>next_line</h4></a></td>
            <td>Move the cursor forward one line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/next_word"><h4>next_word</h4></a></td>
            <td>Move the cursor forward one word.</td>
        </tr>
        <tr>
            <td><a name="#primitive/paste"><h4>paste</h4></a></td>
            <td>Paste the text, replacing the selection.</td>
        </tr>
        <tr>
            <td><a name="#primitive/previous"><h4>previous</h4></a></td>
            <td>Select the previous part of the atom.</td>
        </tr>
        <tr>
            <td><a name="#primitive/previous_element"><h4>previous_element</h4></a></td>
            <td>Move the cursor backward one character.</td>
        </tr>
        <tr>
            <td><a name="#primitive/previous_line"><h4>previous_line</h4></a></td>
            <td>Move the cursor backward one line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/previous_word"><h4>previous_word</h4></a></td>
            <td>Move the cursor backward one word.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_next"><h4>release_next</h4></a></td>
            <td>Remove from the selection the character at the end.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_next_line"><h4>release_next_line</h4></a></td>
            <td>Reduce the end of the selection by one line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_next_line_end"><h4>release_next_line_end</h4></a></td>
            <td>Reduce the selection to the start of the end line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_next_word"><h4>release_next_word</h4></a></td>
            <td>Remove from the selection the word at the end.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_previous"><h4>release_previous</h4></a></td>
            <td>Remove from the selection the character at the start.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_previous_line"><h4>release_previous_line</h4></a></td>
            <td>Reduce the start of the selection by one line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_previous_line_start"><h4>release_previous_line_start</h4></a></td>
            <td>Reduce the selection to the end of the start line.</td>
        </tr>
        <tr>
            <td><a name="#primitive/release_previous_word"><h4>release_previous_word</h4></a></td>
            <td>Remove from the selection the word at the start.</td>
        </tr>
        <tr>
            <td><a name="#primitive/split"><h4>split</h4></a></td>
            <td>Delete selected text and split the line at the cursor.</td>
        </tr>
    </table>
    <br></br>
    <br></br>
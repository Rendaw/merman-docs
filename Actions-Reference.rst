.. raw:: html

    <h1>Actions</h1>
    <div>
        <h2>application</h2>
        <a name="#application/debug"><h3><code>debug</code></h3></a>
        <p>Does nothing, but a good place for breakpoints when debugging Merman.</p>
        <a name="#application/quit"><h3><code>quit</code></h3></a>
        <p>Quits the application. Shows confirmation if the document has unsaved changes.</p>
        <a name="#application/save"><h3><code>save</code></h3></a>
        <p></p>
    </div>
    <div>
        <h2>array</h2>
        <a name="#array/copy"><h3><code>copy</code></h3></a>
        <p>Copy the selected elements.</p>
        <a name="#array/cut"><h3><code>cut</code></h3></a>
        <p>Copy and delete the selected elements.</p>
        <a name="#array/delete"><h3><code>delete</code></h3></a>
        <p>Delete the selected elements.</p>
        <a name="#array/enter"><h3><code>enter</code></h3></a>
        <p>Enter the first selected element.</p>
        <a name="#array/exit"><h3><code>exit</code></h3></a>
        <p>Exit the array.</p>
        <a name="#array/gather_next"><h3><code>gather_next</code></h3></a>
        <p>Gather the next element from the selection. Makes the gathered element the leading edge.</p>
        <a name="#array/gather_previous"><h3><code>gather_previous</code></h3></a>
        <p>Gather the previous element from the selection. Makes the gathered element the leading edge.</p>
        <a name="#array/insert_after"><h3><code>insert_after</code></h3></a>
        <p>Insert a gap after the selection.</p>
        <a name="#array/insert_before"><h3><code>insert_before</code></h3></a>
        <p>Insert a gap before the selection.</p>
        <a name="#array/move_after"><h3><code>move_after</code></h3></a>
        <p>Move the selection after the next element.</p>
        <a name="#array/move_before"><h3><code>move_before</code></h3></a>
        <p>Move the selection before the next element.</p>
        <a name="#array/next"><h3><code>next</code></h3></a>
        <p>Select the next part in the atom.</p>
        <a name="#array/next_element"><h3><code>next_element</code></h3></a>
        <p>Select the next element, deselecting everything else.</p>
        <a name="#array/paste"><h3><code>paste</code></h3></a>
        <p>Replace the selected elements with the copied elements</p>
        <a name="#array/prefix"><h3><code>prefix</code></h3></a>
        <p>Wrap the lead selected element with a prefix gap.</p>
        <a name="#array/previous"><h3><code>previous</code></h3></a>
        <p>Select the previous part in the atom.</p>
        <a name="#array/previous_element"><h3><code>previous_element</code></h3></a>
        <p>Select the previous element, deselecting everything else.</p>
        <a name="#array/release_next"><h3><code>release_next</code></h3></a>
        <p>Remove the next element from the selection. Makes the following selected element the lead.</p>
        <a name="#array/release_previous"><h3><code>release_previous</code></h3></a>
        <p>Remove the previous element from the selection. Makes the following selected element the lead.</p>
        <a name="#array/suffix"><h3><code>suffix</code></h3></a>
        <p>Wrap the lead selected element with a suffix gap</p>
        <a name="#array/window"><h3><code>window</code></h3></a>
        <p>Restrict the view to the tree rooted at the selected lead element.</p>
    </div>
    <div>
        <h2>atom</h2>
        <a name="#atom/copy"><h3><code>copy</code></h3></a>
        <p></p>
        <a name="#atom/cut"><h3><code>cut</code></h3></a>
        <p></p>
        <a name="#atom/delete"><h3><code>delete</code></h3></a>
        <p></p>
        <a name="#atom/enter"><h3><code>enter</code></h3></a>
        <p></p>
        <a name="#atom/exit"><h3><code>exit</code></h3></a>
        <p></p>
        <a name="#atom/next"><h3><code>next</code></h3></a>
        <p></p>
        <a name="#atom/paste"><h3><code>paste</code></h3></a>
        <p></p>
        <a name="#atom/prefix"><h3><code>prefix</code></h3></a>
        <p></p>
        <a name="#atom/previous"><h3><code>previous</code></h3></a>
        <p></p>
        <a name="#atom/suffix"><h3><code>suffix</code></h3></a>
        <p></p>
        <a name="#atom/window"><h3><code>window</code></h3></a>
        <p></p>
    </div>
    <div>
        <h2>editor</h2>
        <a name="#editor/click_hovered"><h3><code>click_hovered</code></h3></a>
        <p></p>
        <a name="#editor/redo"><h3><code>redo</code></h3></a>
        <p></p>
        <a name="#editor/scroll_next"><h3><code>scroll_next</code></h3></a>
        <p></p>
        <a name="#editor/scroll_next_alot"><h3><code>scroll_next_alot</code></h3></a>
        <p></p>
        <a name="#editor/scroll_previous"><h3><code>scroll_previous</code></h3></a>
        <p></p>
        <a name="#editor/scroll_previous_alot"><h3><code>scroll_previous_alot</code></h3></a>
        <p></p>
        <a name="#editor/scroll_reset"><h3><code>scroll_reset</code></h3></a>
        <p></p>
        <a name="#editor/undo"><h3><code>undo</code></h3></a>
        <p></p>
        <a name="#editor/window_clear"><h3><code>window_clear</code></h3></a>
        <p></p>
        <a name="#editor/window_down"><h3><code>window_down</code></h3></a>
        <p></p>
        <a name="#editor/window_up"><h3><code>window_up</code></h3></a>
        <p></p>
    </div>
    <div>
        <h2>gap</h2>
        <a name="#gap/choose"><h3><code>choose</code></h3></a>
        <p></p>
        <a name="#gap/choose_%s (%s = index)"><h3><code>choose_%s (%s = index)</code></h3></a>
        <p></p>
        <a name="#gap/next_choice"><h3><code>next_choice</code></h3></a>
        <p></p>
        <a name="#gap/previous_choice"><h3><code>previous_choice</code></h3></a>
        <p></p>
    </div>
    <div>
        <h2>lua actions module</h2>
        <a name="#lua actions module/%s (%s = lua action id)"><h3><code>%s (%s = lua action id)</code></h3></a>
        <p></p>
    </div>
    <div>
        <h2>modes module</h2>
        <a name="#modes module/mode_%s (%s = mode id)"><h3><code>mode_%s (%s = mode id)</code></h3></a>
        <p></p>
    </div>
    <div>
        <h2>primitive</h2>
        <a name="#primitive/copy"><h3><code>copy</code></h3></a>
        <p></p>
        <a name="#primitive/cut"><h3><code>cut</code></h3></a>
        <p></p>
        <a name="#primitive/delete_next"><h3><code>delete_next</code></h3></a>
        <p></p>
        <a name="#primitive/delete_previous"><h3><code>delete_previous</code></h3></a>
        <p></p>
        <a name="#primitive/exit"><h3><code>exit</code></h3></a>
        <p></p>
        <a name="#primitive/gather_next"><h3><code>gather_next</code></h3></a>
        <p></p>
        <a name="#primitive/gather_next_line"><h3><code>gather_next_line</code></h3></a>
        <p></p>
        <a name="#primitive/gather_next_line_end"><h3><code>gather_next_line_end</code></h3></a>
        <p></p>
        <a name="#primitive/gather_next_word"><h3><code>gather_next_word</code></h3></a>
        <p></p>
        <a name="#primitive/gather_previous"><h3><code>gather_previous</code></h3></a>
        <p></p>
        <a name="#primitive/gather_previous_line"><h3><code>gather_previous_line</code></h3></a>
        <p></p>
        <a name="#primitive/gather_previous_line_start"><h3><code>gather_previous_line_start</code></h3></a>
        <p></p>
        <a name="#primitive/gather_previous_word"><h3><code>gather_previous_word</code></h3></a>
        <p></p>
        <a name="#primitive/join"><h3><code>join</code></h3></a>
        <p></p>
        <a name="#primitive/line_begin"><h3><code>line_begin</code></h3></a>
        <p></p>
        <a name="#primitive/line_end"><h3><code>line_end</code></h3></a>
        <p></p>
        <a name="#primitive/next"><h3><code>next</code></h3></a>
        <p></p>
        <a name="#primitive/next_element"><h3><code>next_element</code></h3></a>
        <p></p>
        <a name="#primitive/next_line"><h3><code>next_line</code></h3></a>
        <p></p>
        <a name="#primitive/next_word"><h3><code>next_word</code></h3></a>
        <p></p>
        <a name="#primitive/paste"><h3><code>paste</code></h3></a>
        <p></p>
        <a name="#primitive/previous"><h3><code>previous</code></h3></a>
        <p></p>
        <a name="#primitive/previous_element"><h3><code>previous_element</code></h3></a>
        <p></p>
        <a name="#primitive/previous_line"><h3><code>previous_line</code></h3></a>
        <p></p>
        <a name="#primitive/previous_word"><h3><code>previous_word</code></h3></a>
        <p></p>
        <a name="#primitive/release_next"><h3><code>release_next</code></h3></a>
        <p></p>
        <a name="#primitive/release_next_line"><h3><code>release_next_line</code></h3></a>
        <p></p>
        <a name="#primitive/release_next_line_end"><h3><code>release_next_line_end</code></h3></a>
        <p></p>
        <a name="#primitive/release_next_word"><h3><code>release_next_word</code></h3></a>
        <p></p>
        <a name="#primitive/release_previous"><h3><code>release_previous</code></h3></a>
        <p></p>
        <a name="#primitive/release_previous_line"><h3><code>release_previous_line</code></h3></a>
        <p></p>
        <a name="#primitive/release_previous_line_start"><h3><code>release_previous_line_start</code></h3></a>
        <p></p>
        <a name="#primitive/release_previous_word"><h3><code>release_previous_word</code></h3></a>
        <p></p>
        <a name="#primitive/split"><h3><code>split</code></h3></a>
        <p></p>
    </div>
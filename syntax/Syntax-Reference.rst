.. raw:: html

    <h1>Introduction</h1>
    <p>This documentation describes the Lua configuration for syntax.Syntax.</p>
    <p>Some values are typed. Specify types with built-in unary functions which take the value to be typed. For example, to place a dog in field animal, write <code>dog { name = "fido" }</code>. Types are indicated in the documentation as a word in parentheses.</p>
    <p>Note that types only need to be specified where indicated.</p>
    <p>Also, if a type only has one required field, the field can be filled directly, so:</p>
    <pre><code>repeat { count = 4 }</code></pre>
    <p>may be shortened to:</p>
    <pre><code>repeat 4</code></pre>
    <h2>Document Root</h2>
    <p>The root element of the document is:</p>
    <a href="#com.zarbosoft.merman.syntax.Syntax">syntax.Syntax</a>
    <h1>Types</h1>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.editor.visual.tags.FreeTag"></a>
        <h2>editor.visual.tags.FreeTag</h2>
        <p>A user specified tag.</p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p>The value of the tag.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.editor.visual.tags.GlobalTag"></a>
        <h2>editor.visual.tags.GlobalTag</h2>
        <p>A tag that indicates editor state, such as "modified" when the document has unsaved changes.</p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p>The value of the tag.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.editor.visual.tags.PartTag"></a>
        <h2>editor.visual.tags.PartTag</h2>
        <p>A tag that indicates an atom part type.</p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p>The value of the tag.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.editor.visual.tags.StateTag"></a>
        <h2>editor.visual.tags.StateTag</h2>
        <p>A tag that indicates an atom state, such as "compact".</p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p>The value of the tag.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.editor.visual.tags.TypeTag"></a>
        <h2>editor.visual.tags.TypeTag</h2>
        <p>A tag that indicates an atom type id.</p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p>The value of the tag.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.HoverType"></a>
        <h2>modules.HoverType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>node</td>
                <td><p>Include the type of the atom.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>part</td>
                <td><p>Include the type of the atom part.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.Indicators"></a>
        <h2>modules.Indicators</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>converse_padding</td>
                <td><p>Separation between the symbol and the converse edge of the screen.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>converse_start</td>
                <td><p>If true, show the symbol by the near converse edge of the screen. Otherwise, the far.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>indicators</td>
                <td><p>Show a floating indicator symbol based on the current global and selection tags.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.modules.Indicators$Indicator">modules.Indicators$Indicator</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>transverse_padding</td>
                <td><p>Separation between the symbol and the transverse edge of the screen.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>transverse_start</td>
                <td><p>If true, show the symbols at the start of the gutter. Otherwise, the end.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.Indicators$Indicator"></a>
        <h2>modules.Indicators$Indicator</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>id</td>
                <td><p>The symbol will have this type tag when shown.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>symbol</td>
                <td><p>The symbol to show.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">syntax.symbol.SymbolSpace</a></li>
                                        <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">syntax.symbol.SymbolText</a></li>
                                        <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">syntax.symbol.SymbolImage</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p>Show the symbol when these tags are present.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">editor.visual.tags.GlobalTag</a></li>
                                            <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">editor.visual.tags.PartTag</a></li>
                                            <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">editor.visual.tags.StateTag</a></li>
                                            <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">editor.visual.tags.FreeTag</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">editor.visual.tags.TypeTag</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.LuaActions"></a>
        <h2>modules.LuaActions</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>actions</td>
                <td><p>A mapping of action names to Lua functions. Each function takes a single <pre>context</pre> argument and returns a boolean, true if the action modified the application state. <pre>context</pre> is an object with the following functions: <pre>act</pre>. <pre>act</pre> takes a string, the name of another action, and runs it, and returns true if the action modified the application state.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.Modes"></a>
        <h2>modules.Modes</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>states</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.SelectionType"></a>
        <h2>modules.SelectionType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>format</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.format.Format">syntax.format.Format</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.hotkeys.HotkeyRule"></a>
        <h2>modules.hotkeys.HotkeyRule</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>free_typing</td>
                <td><p>Text keys that don't match a hotkey are passed to the selected primitive.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>hotkeys</td>
                <td><p>Hotkeys to use when the tags match.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>List of:</p><span><p>Any of (specify type):</p>
                                            <ul>
                                                <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">modules.hotkeys.grammar.Union</a></li>
                                                <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">modules.hotkeys.grammar.Sequence</a></li>
                                                <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">modules.hotkeys.grammar.Terminal</a></li>
                                            </ul></span></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>with</td>
                <td><p>These tags must be present.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">editor.visual.tags.GlobalTag</a></li>
                                            <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">editor.visual.tags.PartTag</a></li>
                                            <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">editor.visual.tags.StateTag</a></li>
                                            <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">editor.visual.tags.FreeTag</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">editor.visual.tags.TypeTag</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>without</td>
                <td><p>These tags must be absent.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">editor.visual.tags.GlobalTag</a></li>
                                            <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">editor.visual.tags.PartTag</a></li>
                                            <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">editor.visual.tags.StateTag</a></li>
                                            <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">editor.visual.tags.FreeTag</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">editor.visual.tags.TypeTag</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.hotkeys.Hotkeys"></a>
        <h2>modules.hotkeys.Hotkeys</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>rules</td>
                <td><p>A list of hotkey rules.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.modules.hotkeys.HotkeyRule">modules.hotkeys.HotkeyRule</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>show_details</td>
                <td><p>Show the current input sequence and possible actions when an input is received in an incomplete sequence.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.hotkeys.Key"></a>
        <h2>modules.hotkeys.Key</h2>
        <p></p>
        <ul class="definitions">
            <li><code>mouse1</code><span></span></li>
            <li><code>mouse2</code><span></span></li>
            <li><code>mouse3</code><span></span></li>
            <li><code>mouse_scroll_up</code><span></span></li>
            <li><code>mouse_scroll_down</code><span></span></li>
            <li><code>enter</code><span></span></li>
            <li><code>backspace</code><span></span></li>
            <li><code>tab</code><span></span></li>
            <li><code>cancel</code><span></span></li>
            <li><code>clear</code><span></span></li>
            <li><code>shift</code><span></span></li>
            <li><code>control</code><span></span></li>
            <li><code>alt</code><span></span></li>
            <li><code>pause</code><span></span></li>
            <li><code>caps</code><span></span></li>
            <li><code>escape</code><span></span></li>
            <li><code>space</code><span></span></li>
            <li><code>page_up</code><span></span></li>
            <li><code>page_down</code><span></span></li>
            <li><code>end</code><span></span></li>
            <li><code>home</code><span></span></li>
            <li><code>left</code><span></span></li>
            <li><code>up</code><span></span></li>
            <li><code>right</code><span></span></li>
            <li><code>down</code><span></span></li>
            <li><code>comma</code><span></span></li>
            <li><code>minus</code><span></span></li>
            <li><code>period</code><span></span></li>
            <li><code>slash</code><span></span></li>
            <li><code>0</code><span></span></li>
            <li><code>1</code><span></span></li>
            <li><code>2</code><span></span></li>
            <li><code>3</code><span></span></li>
            <li><code>4</code><span></span></li>
            <li><code>5</code><span></span></li>
            <li><code>6</code><span></span></li>
            <li><code>7</code><span></span></li>
            <li><code>8</code><span></span></li>
            <li><code>9</code><span></span></li>
            <li><code>semicolon</code><span></span></li>
            <li><code>equals</code><span></span></li>
            <li><code>a</code><span></span></li>
            <li><code>b</code><span></span></li>
            <li><code>c</code><span></span></li>
            <li><code>d</code><span></span></li>
            <li><code>e</code><span></span></li>
            <li><code>f</code><span></span></li>
            <li><code>g</code><span></span></li>
            <li><code>h</code><span></span></li>
            <li><code>i</code><span></span></li>
            <li><code>j</code><span></span></li>
            <li><code>k</code><span></span></li>
            <li><code>l</code><span></span></li>
            <li><code>m</code><span></span></li>
            <li><code>n</code><span></span></li>
            <li><code>o</code><span></span></li>
            <li><code>p</code><span></span></li>
            <li><code>q</code><span></span></li>
            <li><code>r</code><span></span></li>
            <li><code>s</code><span></span></li>
            <li><code>t</code><span></span></li>
            <li><code>u</code><span></span></li>
            <li><code>v</code><span></span></li>
            <li><code>w</code><span></span></li>
            <li><code>x</code><span></span></li>
            <li><code>y</code><span></span></li>
            <li><code>z</code><span></span></li>
            <li><code>open_bracket</code><span></span></li>
            <li><code>back_slash</code><span></span></li>
            <li><code>close_bracket</code><span></span></li>
            <li><code>numpad0</code><span></span></li>
            <li><code>numpad1</code><span></span></li>
            <li><code>numpad2</code><span></span></li>
            <li><code>numpad3</code><span></span></li>
            <li><code>numpad4</code><span></span></li>
            <li><code>numpad5</code><span></span></li>
            <li><code>numpad6</code><span></span></li>
            <li><code>numpad7</code><span></span></li>
            <li><code>numpad8</code><span></span></li>
            <li><code>numpad9</code><span></span></li>
            <li><code>multiply</code><span></span></li>
            <li><code>add</code><span></span></li>
            <li><code>separator</code><span></span></li>
            <li><code>subtract</code><span></span></li>
            <li><code>decimal</code><span></span></li>
            <li><code>divide</code><span></span></li>
            <li><code>delete</code><span></span></li>
            <li><code>num_lock</code><span></span></li>
            <li><code>scroll_lock</code><span></span></li>
            <li><code>f1</code><span></span></li>
            <li><code>f2</code><span></span></li>
            <li><code>f3</code><span></span></li>
            <li><code>f4</code><span></span></li>
            <li><code>f5</code><span></span></li>
            <li><code>f6</code><span></span></li>
            <li><code>f7</code><span></span></li>
            <li><code>f8</code><span></span></li>
            <li><code>f9</code><span></span></li>
            <li><code>f10</code><span></span></li>
            <li><code>f11</code><span></span></li>
            <li><code>f12</code><span></span></li>
            <li><code>f13</code><span></span></li>
            <li><code>f14</code><span></span></li>
            <li><code>f15</code><span></span></li>
            <li><code>f16</code><span></span></li>
            <li><code>f17</code><span></span></li>
            <li><code>f18</code><span></span></li>
            <li><code>f19</code><span></span></li>
            <li><code>f20</code><span></span></li>
            <li><code>f21</code><span></span></li>
            <li><code>f22</code><span></span></li>
            <li><code>f23</code><span></span></li>
            <li><code>f24</code><span></span></li>
            <li><code>printscreen</code><span></span></li>
            <li><code>insert</code><span></span></li>
            <li><code>help</code><span></span></li>
            <li><code>meta</code><span></span></li>
            <li><code>back_quote</code><span></span></li>
            <li><code>quote</code><span></span></li>
            <li><code>kp_up</code><span></span></li>
            <li><code>kp_down</code><span></span></li>
            <li><code>kp_left</code><span></span></li>
            <li><code>kp_right</code><span></span></li>
            <li><code>dead_grave</code><span></span></li>
            <li><code>dead_acute</code><span></span></li>
            <li><code>dead_circumflex</code><span></span></li>
            <li><code>dead_tilde</code><span></span></li>
            <li><code>dead_macron</code><span></span></li>
            <li><code>dead_breve</code><span></span></li>
            <li><code>dead_abovedot</code><span></span></li>
            <li><code>dead_diaeresis</code><span></span></li>
            <li><code>dead_abovering</code><span></span></li>
            <li><code>dead_doubleacute</code><span></span></li>
            <li><code>dead_caron</code><span></span></li>
            <li><code>dead_cedilla</code><span></span></li>
            <li><code>dead_ogonek</code><span></span></li>
            <li><code>dead_iota</code><span></span></li>
            <li><code>dead_voiced_sound</code><span></span></li>
            <li><code>dead_semivoiced_sound</code><span></span></li>
            <li><code>ampersand</code><span></span></li>
            <li><code>asterisk</code><span></span></li>
            <li><code>quotedbl</code><span></span></li>
            <li><code>less</code><span></span></li>
            <li><code>greater</code><span></span></li>
            <li><code>braceleft</code><span></span></li>
            <li><code>braceright</code><span></span></li>
            <li><code>at</code><span></span></li>
            <li><code>colon</code><span></span></li>
            <li><code>circumflex</code><span></span></li>
            <li><code>dollar</code><span></span></li>
            <li><code>euro_sign</code><span></span></li>
            <li><code>exclamation_mark</code><span></span></li>
            <li><code>inverted_exclamation_mark</code><span></span></li>
            <li><code>left_parenthesis</code><span></span></li>
            <li><code>number_sign</code><span></span></li>
            <li><code>plus</code><span></span></li>
            <li><code>right_parenthesis</code><span></span></li>
            <li><code>underscore</code><span></span></li>
            <li><code>windows</code><span></span></li>
            <li><code>context_menu</code><span></span></li>
            <li><code>final</code><span></span></li>
            <li><code>convert</code><span></span></li>
            <li><code>nonconvert</code><span></span></li>
            <li><code>accept</code><span></span></li>
            <li><code>modechange</code><span></span></li>
            <li><code>kana</code><span></span></li>
            <li><code>kanji</code><span></span></li>
            <li><code>alphanumeric</code><span></span></li>
            <li><code>katakana</code><span></span></li>
            <li><code>hiragana</code><span></span></li>
            <li><code>full_width</code><span></span></li>
            <li><code>half_width</code><span></span></li>
            <li><code>roman_characters</code><span></span></li>
            <li><code>all_candidates</code><span></span></li>
            <li><code>previous_candidate</code><span></span></li>
            <li><code>code_input</code><span></span></li>
            <li><code>japanese_katakana</code><span></span></li>
            <li><code>japanese_hiragana</code><span></span></li>
            <li><code>japanese_roman</code><span></span></li>
            <li><code>kana_lock</code><span></span></li>
            <li><code>input_method_on_off</code><span></span></li>
            <li><code>cut</code><span></span></li>
            <li><code>copy</code><span></span></li>
            <li><code>paste</code><span></span></li>
            <li><code>undo</code><span></span></li>
            <li><code>again</code><span></span></li>
            <li><code>find</code><span></span></li>
            <li><code>props</code><span></span></li>
            <li><code>stop</code><span></span></li>
            <li><code>compose</code><span></span></li>
            <li><code>alt_graph</code><span></span></li>
            <li><code>begin</code><span></span></li>
            <li><code>undefined</code><span></span></li>
            <li><code>softkey_0</code><span></span></li>
            <li><code>softkey_1</code><span></span></li>
            <li><code>softkey_2</code><span></span></li>
            <li><code>softkey_3</code><span></span></li>
            <li><code>softkey_4</code><span></span></li>
            <li><code>softkey_5</code><span></span></li>
            <li><code>softkey_6</code><span></span></li>
            <li><code>softkey_7</code><span></span></li>
            <li><code>softkey_8</code><span></span></li>
            <li><code>softkey_9</code><span></span></li>
            <li><code>game_a</code><span></span></li>
            <li><code>game_b</code><span></span></li>
            <li><code>game_c</code><span></span></li>
            <li><code>game_d</code><span></span></li>
            <li><code>star</code><span></span></li>
            <li><code>pound</code><span></span></li>
            <li><code>power</code><span></span></li>
            <li><code>info</code><span></span></li>
            <li><code>colored_key_0</code><span></span></li>
            <li><code>colored_key_1</code><span></span></li>
            <li><code>colored_key_2</code><span></span></li>
            <li><code>colored_key_3</code><span></span></li>
            <li><code>eject_toggle</code><span></span></li>
            <li><code>play</code><span></span></li>
            <li><code>record</code><span></span></li>
            <li><code>fast_fwd</code><span></span></li>
            <li><code>rewind</code><span></span></li>
            <li><code>track_prev</code><span></span></li>
            <li><code>track_next</code><span></span></li>
            <li><code>channel_up</code><span></span></li>
            <li><code>channel_down</code><span></span></li>
            <li><code>volume_up</code><span></span></li>
            <li><code>volume_down</code><span></span></li>
            <li><code>mute</code><span></span></li>
            <li><code>command</code><span></span></li>
            <li><code>shortcut</code><span></span></li>
        </ul>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.hotkeys.grammar.Sequence"></a>
        <h2>modules.hotkeys.grammar.Sequence</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>nodes</td>
                <td><p>The list of rules to match in sequence.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">modules.hotkeys.grammar.Union</a></li>
                                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">modules.hotkeys.grammar.Sequence</a></li>
                                            <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">modules.hotkeys.grammar.Terminal</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.hotkeys.grammar.Terminal"></a>
        <h2>modules.hotkeys.grammar.Terminal</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>key</td>
                <td><p>The input that is being pressed or released.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.modules.hotkeys.Key">modules.hotkeys.Key</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>modifiers</td>
                <td><p>Inputs that must be active for this rule to match.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><a href="#com.zarbosoft.merman.modules.hotkeys.Key">modules.hotkeys.Key</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>press</td>
                <td><p>True if the input is pressed, false if the input is released.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>true</code></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.modules.hotkeys.grammar.Union"></a>
        <h2>modules.hotkeys.grammar.Union</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>nodes</td>
                <td><p>All rules that may match.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">modules.hotkeys.grammar.Union</a></li>
                                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">modules.hotkeys.grammar.Sequence</a></li>
                                            <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">modules.hotkeys.grammar.Terminal</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.FreeAtomType"></a>
        <h2>syntax.FreeAtomType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>alignments</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(relative) </span><a href="#com.zarbosoft.merman.syntax.alignments.RelativeAlignmentDefinition">syntax.alignments.RelativeAlignmentDefinition</a></li>
                                            <li><span>(absolute) </span><a href="#com.zarbosoft.merman.syntax.alignments.AbsoluteAlignmentDefinition">syntax.alignments.AbsoluteAlignmentDefinition</a></li>
                                            <li><span>(concensus) </span><a href="#com.zarbosoft.merman.syntax.alignments.ConcensusAlignmentDefinition">syntax.alignments.ConcensusAlignmentDefinition</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>associate_forward</td>
                <td><p>When filling a suffix or prefix gap, the resultant atom will be raised up the tree based on its associativity. For example, suppose in the document <pre>a + b</pre> you type <pre>+ c</pre>. If <pre>+</pre> is back associative, the resultant tree will be equivalent to <pre>(a + b) + c</pre>. If <pre>+</pre> is front associative, the resultant tree will be equivalent to <pre>a + (b + c)</pre>. This is a translation of mathematical operator associativity. Associativity only applies to atoms of the same <pre>precedence</pre>.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>auto_choose_ambiguity</td>
                <td><p>If this type is a suggestion and there are less than this many choices, auto-choose this type.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>-1</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>back</td>
                <td><p>This describes the format of the data on disk. Modifiable back parts must have a corresponding middle part.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">syntax.back.BackDataRootArray</a></li>
                                            <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">syntax.back.BackDataRecord</a></li>
                                            <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">syntax.back.BackDataArray</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">syntax.back.BackType</a></li>
                                            <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">syntax.back.BackJSONNull</a></li>
                                            <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">syntax.back.BackDataKey</a></li>
                                            <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">syntax.back.BackDataType</a></li>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">syntax.back.BackPrimitive</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">syntax.back.BackArray</a></li>
                                            <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">syntax.back.BackJSONFalse</a></li>
                                            <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">syntax.back.BackDataJSONInt</a></li>
                                            <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">syntax.back.BackDataAtom</a></li>
                                            <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">syntax.back.BackJSONTrue</a></li>
                                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">syntax.back.BackRecord</a></li>
                                            <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">syntax.back.BackJSONFloat</a></li>
                                            <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">syntax.back.BackDataJSONFloat</a></li>
                                            <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">syntax.back.BackDataPrimitive</a></li>
                                            <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">syntax.back.BackJSONInt</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>depth_score</td>
                <td><p>When calculating depth for windowing, this is the value the atom increases the depth score by.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>front</td>
                <td><p>This describes how the atom is represented in the editor. Modifiable must have a corresponding middle part.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataAtom">syntax.front.FrontDataAtom</a></li>
                                            <li><span>(com.zarbosoft.merman.syntax.front.FrontDataRootArray) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataRootArray">syntax.front.FrontDataRootArray</a></li>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataPrimitive">syntax.front.FrontDataPrimitive</a></li>
                                            <li><span>(symbol) </span><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataArray">syntax.front.FrontDataArray</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>id</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddlePrimitive">syntax.middle.MiddlePrimitive</a></li>
                                            <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleAtom">syntax.middle.MiddleAtom</a></li>
                                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleRecord">syntax.middle.MiddleRecord</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleArray">syntax.middle.MiddleArray</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>name</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>precedence</td>
                <td><p>When filling a suffix or prefix gap, the resultant atom will be raised up the tree</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>2147483647</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.GapAtomType"></a>
        <h2>syntax.GapAtomType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>prefix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>suffix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.Padding"></a>
        <h2>syntax.Padding</h2>
        <p>Padding around source content (not banner, details, indicators, etc).</p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>converse_end</td>
                <td><p>Pad the converse end by this many pixels.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>converse_start</td>
                <td><p>Pad the converse start by this many pixels.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>transverse_end</td>
                <td><p>Pad the transverse end by this many pixels.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>transverse_start</td>
                <td><p>Pad the transverse start by this many pixels.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0</code></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.PrefixGapAtomType"></a>
        <h2>syntax.PrefixGapAtomType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>infix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>prefix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>suffix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.RootAtomType"></a>
        <h2>syntax.RootAtomType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>alignments</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(relative) </span><a href="#com.zarbosoft.merman.syntax.alignments.RelativeAlignmentDefinition">syntax.alignments.RelativeAlignmentDefinition</a></li>
                                            <li><span>(absolute) </span><a href="#com.zarbosoft.merman.syntax.alignments.AbsoluteAlignmentDefinition">syntax.alignments.AbsoluteAlignmentDefinition</a></li>
                                            <li><span>(concensus) </span><a href="#com.zarbosoft.merman.syntax.alignments.ConcensusAlignmentDefinition">syntax.alignments.ConcensusAlignmentDefinition</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>back</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">syntax.back.BackDataRootArray</a></li>
                                            <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">syntax.back.BackDataRecord</a></li>
                                            <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">syntax.back.BackDataArray</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">syntax.back.BackType</a></li>
                                            <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">syntax.back.BackJSONNull</a></li>
                                            <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">syntax.back.BackDataKey</a></li>
                                            <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">syntax.back.BackDataType</a></li>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">syntax.back.BackPrimitive</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">syntax.back.BackArray</a></li>
                                            <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">syntax.back.BackJSONFalse</a></li>
                                            <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">syntax.back.BackDataJSONInt</a></li>
                                            <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">syntax.back.BackDataAtom</a></li>
                                            <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">syntax.back.BackJSONTrue</a></li>
                                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">syntax.back.BackRecord</a></li>
                                            <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">syntax.back.BackJSONFloat</a></li>
                                            <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">syntax.back.BackDataJSONFloat</a></li>
                                            <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">syntax.back.BackDataPrimitive</a></li>
                                            <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">syntax.back.BackJSONInt</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>front</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataAtom">syntax.front.FrontDataAtom</a></li>
                                            <li><span>(com.zarbosoft.merman.syntax.front.FrontDataRootArray) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataRootArray">syntax.front.FrontDataRootArray</a></li>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataPrimitive">syntax.front.FrontDataPrimitive</a></li>
                                            <li><span>(symbol) </span><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataArray">syntax.front.FrontDataArray</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddlePrimitive">syntax.middle.MiddlePrimitive</a></li>
                                            <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleAtom">syntax.middle.MiddleAtom</a></li>
                                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleRecord">syntax.middle.MiddleRecord</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleArray">syntax.middle.MiddleArray</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.SuffixGapAtomType"></a>
        <h2>syntax.SuffixGapAtomType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>infix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>prefix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>suffix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.Syntax"></a>
        <h2>syntax.Syntax</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>animate_course_placement</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>animate_details</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>background</td>
                <td><p>The background color of the document.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">syntax.style.ModelColor$RGB</a></li>
                                        <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">syntax.style.ModelColor$RGBA</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>banner_pad</td>
                <td><p>Pad the banner pane.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.Padding">syntax.Padding</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>converse_direction</td>
                <td><p>The direction of text flow in a line. For English, this will be RIGHT. Note that values other than RIGHT may not work, since JavaFX has limited text direction support.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.Syntax$Direction">syntax.Syntax$Direction</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>right</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>detail_pad</td>
                <td><p>Pad the detail pane.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.Padding">syntax.Padding</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>detail_span</td>
                <td><p>The max transverse span for details panes, excluding padding.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>300</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>ellipsize_threshold</td>
                <td><p>Limit the window to this depth span.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>2147483647</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>gap</td>
                <td><p>The gap type is used when editing the document, for new data whose type is not yet known.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.GapAtomType">syntax.GapAtomType</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>gap_choice_style</td>
                <td><p>Style of the gap choice selection box.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.style.BoxStyle">syntax.style.BoxStyle</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>gap_placeholder</td>
                <td><p>Placeholder for text in gap choice previews.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">syntax.symbol.SymbolSpace</a></li>
                                        <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">syntax.symbol.SymbolText</a></li>
                                        <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">syntax.symbol.SymbolImage</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>groups</td>
                <td><p>Pseudo-types representing groups of types. Group ids can be used anywhere a type id is required.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Set of:</p><span>Any string</span></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>lay_brick_batch_size</td>
                <td><p>Generate bricks in this batch size when jumping, scrolling, and editing.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>10</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>modules</td>
                <td><p>A list of modules to activate. Listed are modules bundled with this distribution, but addional modules may be installed and used.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(hover_type) </span><a href="#com.zarbosoft.merman.modules.HoverType">modules.HoverType</a></li>
                                            <li><span>(lua_actions) </span><a href="#com.zarbosoft.merman.modules.LuaActions">modules.LuaActions</a></li>
                                            <li><span>(modes) </span><a href="#com.zarbosoft.merman.modules.Modes">modules.Modes</a></li>
                                            <li><span>(selection_type) </span><a href="#com.zarbosoft.merman.modules.SelectionType">modules.SelectionType</a></li>
                                            <li><span>(indicators) </span><a href="#com.zarbosoft.merman.modules.Indicators">modules.Indicators</a></li>
                                            <li><span>(hotkeys) </span><a href="#com.zarbosoft.merman.modules.hotkeys.Hotkeys">modules.hotkeys.Hotkeys</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>name</td>
                <td><p>The name of the syntax. This may be used in menus and dialogs.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>pad</td>
                <td><p>Pad the document.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.Padding">syntax.Padding</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>placeholder</td>
                <td><p>Character to substitute for non-printing characters in primitives.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>▢</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>prefix_gap</td>
                <td><p>The prefix gap type is similar to the gap type, but is used when enclosing an existing atom in a new atom, where the new atom visually precedes the existing atom.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.PrefixGapAtomType">syntax.PrefixGapAtomType</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>pretty_save</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>retry_expand_factor</td>
                <td><p>Retry course expansion when converse deficit has increased by this factor.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>1.25</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>root</td>
                <td><p>The type of the root array in a document. This is not used when pasting code; in that case the context is used to determine the paste's potential root type.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.RootAtomType">syntax.RootAtomType</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>scroll_alot_factor</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0.8</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>scroll_factor</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>0.1</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>start_windowed</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>styles</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.style.Style">syntax.style.Style</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>suffix_gap</td>
                <td><p>The suffix gap type is similar to the gap type, but is used when enclosing an existing atom in a new atom, where the new atom visually succeeds the existing atom.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.SuffixGapAtomType">syntax.SuffixGapAtomType</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>transverse_direction</td>
                <td><p>The direction of successive lines. For English, this will be DOWN.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.Syntax$Direction">syntax.Syntax$Direction</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>down</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>type</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.Syntax$BackType">syntax.Syntax$BackType</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>luxem</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>types</td>
                <td><p>The definitions of all distinct element types in a document.<br>A type with the id '__gap' and a single middle primitive element named 'value' must exist. This will be used as a placeholder when entering text before it is distinguishable as any other defined element.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.FreeAtomType">syntax.FreeAtomType</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.Syntax$BackType"></a>
        <h2>syntax.Syntax$BackType</h2>
        <p></p>
        <ul class="definitions">
            <li><code>luxem</code><span>Back parts and source files are in luxem format.</span></li>
            <li><code>json</code><span>Back parts and source files are in JSON format.</span></li>
        </ul>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.Syntax$Direction"></a>
        <h2>syntax.Syntax$Direction</h2>
        <p></p>
        <ul class="definitions">
            <li><code>up</code><span></span></li>
            <li><code>down</code><span></span></li>
            <li><code>left</code><span></span></li>
            <li><code>right</code><span></span></li>
        </ul>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.alignments.AbsoluteAlignmentDefinition"></a>
        <h2>syntax.alignments.AbsoluteAlignmentDefinition</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>offset</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.alignments.ConcensusAlignmentDefinition"></a>
        <h2>syntax.alignments.ConcensusAlignmentDefinition</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.alignments.RelativeAlignmentDefinition"></a>
        <h2>syntax.alignments.RelativeAlignmentDefinition</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>base</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>offset</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackArray"></a>
        <h2>syntax.back.BackArray</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>elements</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">syntax.back.BackDataRootArray</a></li>
                                            <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">syntax.back.BackDataRecord</a></li>
                                            <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">syntax.back.BackDataArray</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">syntax.back.BackType</a></li>
                                            <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">syntax.back.BackJSONNull</a></li>
                                            <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">syntax.back.BackDataKey</a></li>
                                            <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">syntax.back.BackDataType</a></li>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">syntax.back.BackPrimitive</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">syntax.back.BackArray</a></li>
                                            <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">syntax.back.BackJSONFalse</a></li>
                                            <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">syntax.back.BackDataJSONInt</a></li>
                                            <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">syntax.back.BackDataAtom</a></li>
                                            <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">syntax.back.BackJSONTrue</a></li>
                                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">syntax.back.BackRecord</a></li>
                                            <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">syntax.back.BackJSONFloat</a></li>
                                            <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">syntax.back.BackDataJSONFloat</a></li>
                                            <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">syntax.back.BackDataPrimitive</a></li>
                                            <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">syntax.back.BackJSONInt</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>name</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataArray"></a>
        <h2>syntax.back.BackDataArray</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataAtom"></a>
        <h2>syntax.back.BackDataAtom</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataJSONFloat"></a>
        <h2>syntax.back.BackDataJSONFloat</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataJSONInt"></a>
        <h2>syntax.back.BackDataJSONInt</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataKey"></a>
        <h2>syntax.back.BackDataKey</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataPrimitive"></a>
        <h2>syntax.back.BackDataPrimitive</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataRecord"></a>
        <h2>syntax.back.BackDataRecord</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataRootArray"></a>
        <h2>syntax.back.BackDataRootArray</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackDataType"></a>
        <h2>syntax.back.BackDataType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>child</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">syntax.back.BackDataRootArray</a></li>
                                        <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">syntax.back.BackDataRecord</a></li>
                                        <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">syntax.back.BackDataArray</a></li>
                                        <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">syntax.back.BackType</a></li>
                                        <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">syntax.back.BackJSONNull</a></li>
                                        <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">syntax.back.BackDataKey</a></li>
                                        <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">syntax.back.BackDataType</a></li>
                                        <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">syntax.back.BackPrimitive</a></li>
                                        <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">syntax.back.BackArray</a></li>
                                        <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">syntax.back.BackJSONFalse</a></li>
                                        <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">syntax.back.BackDataJSONInt</a></li>
                                        <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">syntax.back.BackDataAtom</a></li>
                                        <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">syntax.back.BackJSONTrue</a></li>
                                        <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">syntax.back.BackRecord</a></li>
                                        <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">syntax.back.BackJSONFloat</a></li>
                                        <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">syntax.back.BackDataJSONFloat</a></li>
                                        <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">syntax.back.BackDataPrimitive</a></li>
                                        <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">syntax.back.BackJSONInt</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONFalse"></a>
        <h2>syntax.back.BackJSONFalse</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONFloat"></a>
        <h2>syntax.back.BackJSONFloat</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONInt"></a>
        <h2>syntax.back.BackJSONInt</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONNull"></a>
        <h2>syntax.back.BackJSONNull</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONTrue"></a>
        <h2>syntax.back.BackJSONTrue</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackPrimitive"></a>
        <h2>syntax.back.BackPrimitive</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackRecord"></a>
        <h2>syntax.back.BackRecord</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>pairs</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">syntax.back.BackDataRootArray</a></li>
                                            <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">syntax.back.BackDataRecord</a></li>
                                            <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">syntax.back.BackDataArray</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">syntax.back.BackType</a></li>
                                            <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">syntax.back.BackJSONNull</a></li>
                                            <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">syntax.back.BackDataKey</a></li>
                                            <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">syntax.back.BackDataType</a></li>
                                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">syntax.back.BackPrimitive</a></li>
                                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">syntax.back.BackArray</a></li>
                                            <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">syntax.back.BackJSONFalse</a></li>
                                            <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">syntax.back.BackDataJSONInt</a></li>
                                            <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">syntax.back.BackDataAtom</a></li>
                                            <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">syntax.back.BackJSONTrue</a></li>
                                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">syntax.back.BackRecord</a></li>
                                            <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">syntax.back.BackJSONFloat</a></li>
                                            <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">syntax.back.BackDataJSONFloat</a></li>
                                            <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">syntax.back.BackDataPrimitive</a></li>
                                            <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">syntax.back.BackJSONInt</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.back.BackType"></a>
        <h2>syntax.back.BackType</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>child</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">syntax.back.BackDataRootArray</a></li>
                                        <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">syntax.back.BackDataRecord</a></li>
                                        <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">syntax.back.BackDataArray</a></li>
                                        <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">syntax.back.BackType</a></li>
                                        <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">syntax.back.BackJSONNull</a></li>
                                        <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">syntax.back.BackDataKey</a></li>
                                        <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">syntax.back.BackDataType</a></li>
                                        <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">syntax.back.BackPrimitive</a></li>
                                        <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">syntax.back.BackArray</a></li>
                                        <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">syntax.back.BackJSONFalse</a></li>
                                        <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">syntax.back.BackDataJSONInt</a></li>
                                        <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">syntax.back.BackDataAtom</a></li>
                                        <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">syntax.back.BackJSONTrue</a></li>
                                        <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">syntax.back.BackRecord</a></li>
                                        <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">syntax.back.BackJSONFloat</a></li>
                                        <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">syntax.back.BackDataJSONFloat</a></li>
                                        <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">syntax.back.BackDataPrimitive</a></li>
                                        <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">syntax.back.BackJSONInt</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>value</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.format.Format"></a>
        <h2>syntax.format.Format</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>elements</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(lit) </span><a href="#com.zarbosoft.merman.syntax.format.Literal">syntax.format.Literal</a></li>
                                            <li><span>(ref) </span><a href="#com.zarbosoft.merman.syntax.format.Reference">syntax.format.Reference</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.format.Literal"></a>
        <h2>syntax.format.Literal</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>value</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.format.Reference"></a>
        <h2>syntax.format.Reference</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>name</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.ConditionNode"></a>
        <h2>syntax.front.ConditionNode</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>invert</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>is</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.front.ConditionNode$Is">syntax.front.ConditionNode$Is</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.ConditionNode$Is"></a>
        <h2>syntax.front.ConditionNode$Is</h2>
        <p></p>
        <ul class="definitions">
            <li><code>precedent</code><span>Show if the atom is precedent relative to its parent.</span></li>
        </ul>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.ConditionValue"></a>
        <h2>syntax.front.ConditionValue</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>invert</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>is</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.front.ConditionValue$Is">syntax.front.ConditionValue$Is</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.ConditionValue$Is"></a>
        <h2>syntax.front.ConditionValue$Is</h2>
        <p></p>
        <ul class="definitions">
            <li><code>empty</code><span>Show if the value is empty.</span></li>
        </ul>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataArray"></a>
        <h2>syntax.front.FrontDataArray</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>ellipsis</td>
                <td><p>How to visualize the ellipsis.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">syntax.symbol.SymbolSpace</a></li>
                                        <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">syntax.symbol.SymbolText</a></li>
                                        <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">syntax.symbol.SymbolImage</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>prefix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>separator</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>suffix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tag_first</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tag_last</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataAtom"></a>
        <h2>syntax.front.FrontDataAtom</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>ellipsis</td>
                <td><p>How to visualize the ellipsis.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">syntax.symbol.SymbolSpace</a></li>
                                        <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">syntax.symbol.SymbolText</a></li>
                                        <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">syntax.symbol.SymbolImage</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>hotkeys</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">modules.hotkeys.grammar.Union</a></li>
                                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">modules.hotkeys.grammar.Sequence</a></li>
                                            <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">modules.hotkeys.grammar.Terminal</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataPrimitive"></a>
        <h2>syntax.front.FrontDataPrimitive</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>hotkeys</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">modules.hotkeys.grammar.Union</a></li>
                                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">modules.hotkeys.grammar.Sequence</a></li>
                                            <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">modules.hotkeys.grammar.Terminal</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>middle</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataRootArray"></a>
        <h2>syntax.front.FrontDataRootArray</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>ellipsis</td>
                <td><p>How to visualize the ellipsis.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">syntax.symbol.SymbolSpace</a></li>
                                        <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">syntax.symbol.SymbolText</a></li>
                                        <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">syntax.symbol.SymbolImage</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>prefix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>separator</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>suffix</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">syntax.front.FrontSymbol</a></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tag_first</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tag_last</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code>false</code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.front.FrontSymbol"></a>
        <h2>syntax.front.FrontSymbol</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>condition</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(precedential) </span><a href="#com.zarbosoft.merman.syntax.front.ConditionNode">syntax.front.ConditionNode</a></li>
                                        <li><span>(value) </span><a href="#com.zarbosoft.merman.syntax.front.ConditionValue">syntax.front.ConditionValue</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>gap_key</td>
                <td><p>Use this string as a key for matching the atom when filling a gap. A text symbol by default uses the shown text.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                        <tr>
                            <td>Default value</td>
                            <td><code></code></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>tags</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span>Any string</span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>type</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">syntax.symbol.SymbolSpace</a></li>
                                        <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">syntax.symbol.SymbolText</a></li>
                                        <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">syntax.symbol.SymbolImage</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.middle.MiddleArray"></a>
        <h2>syntax.middle.MiddleArray</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>type</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.middle.MiddleAtom"></a>
        <h2>syntax.middle.MiddleAtom</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>type</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.middle.MiddlePrimitive"></a>
        <h2>syntax.middle.MiddlePrimitive</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>validation</td>
                <td><p>An expression grammar describing valid primitive contents.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">modules.hotkeys.grammar.Union</a></li>
                                        <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">modules.hotkeys.grammar.Sequence</a></li>
                                        <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">modules.hotkeys.grammar.Terminal</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.middle.MiddleRecord"></a>
        <h2>syntax.middle.MiddleRecord</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>type</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.style.BoxStyle"></a>
        <h2>syntax.style.BoxStyle</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>fill</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>fill_color</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">syntax.style.ModelColor$RGB</a></li>
                                        <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">syntax.style.ModelColor$RGBA</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>line</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>line_color</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">syntax.style.ModelColor$RGB</a></li>
                                        <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">syntax.style.ModelColor$RGBA</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>line_thickness</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>pad</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_end</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_outer_edges</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_radius</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_start</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.style.ModelColor$RGB"></a>
        <h2>syntax.style.ModelColor$RGB</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>b</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>g</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>r</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.style.ModelColor$RGBA"></a>
        <h2>syntax.style.ModelColor$RGBA</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>a</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>b</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>g</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>r</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.style.ObboxStyle"></a>
        <h2>syntax.style.ObboxStyle</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>fill</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>fill_color</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">syntax.style.ModelColor$RGB</a></li>
                                        <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">syntax.style.ModelColor$RGBA</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>line</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>line_color</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">syntax.style.ModelColor$RGB</a></li>
                                        <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">syntax.style.ModelColor$RGBA</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>line_thickness</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any decimal value</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>pad</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_concave</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_end</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_inner_edges</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_outer_edges</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_radius</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>round_start</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.style.Style"></a>
        <h2>syntax.style.Style</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>align</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>box</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.style.BoxStyle">syntax.style.BoxStyle</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>color</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Any of (specify type):</p>
                                    <ul>
                                        <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">syntax.style.ModelColor$RGB</a></li>
                                        <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">syntax.style.ModelColor$RGBA</a></li>
                                    </ul></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>converse</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>font</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>font_size</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>image</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>obbox</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><a href="#com.zarbosoft.merman.syntax.style.ObboxStyle">syntax.style.ObboxStyle</a></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>rotate</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>space</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>space_after</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>space_before</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>space_transverse_after</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>space_transverse_before</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>split</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td>
                                <ul>
                                    <li><code>true</code></li>
                                    <li><code>false</code></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>transverse</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any integer</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>with</td>
                <td><p>These tags must be present.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">editor.visual.tags.GlobalTag</a></li>
                                            <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">editor.visual.tags.PartTag</a></li>
                                            <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">editor.visual.tags.StateTag</a></li>
                                            <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">editor.visual.tags.FreeTag</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">editor.visual.tags.TypeTag</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
            <tr>
                <td>without</td>
                <td><p>A style will apply to a brick if both the brick and the global tags contain none of these.</p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                                        <ul>
                                            <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">editor.visual.tags.GlobalTag</a></li>
                                            <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">editor.visual.tags.PartTag</a></li>
                                            <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">editor.visual.tags.StateTag</a></li>
                                            <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">editor.visual.tags.FreeTag</a></li>
                                            <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">editor.visual.tags.TypeTag</a></li>
                                        </ul></span></span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><span>no</span></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.symbol.SymbolImage"></a>
        <h2>syntax.symbol.SymbolImage</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.symbol.SymbolSpace"></a>
        <h2>syntax.symbol.SymbolSpace</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <div>
        <a class="totop" href="#top">top</a>
        <a name="com.zarbosoft.merman.syntax.symbol.SymbolText"></a>
        <h2>syntax.symbol.SymbolText</h2>
        <p></p>
        <table>
            <tr class="fields">
                <th>Fields</th>
                <th></th>
            </tr>
            <tr>
                <td>text</td>
                <td><p></p>
                    <table class="definitions">
                        <tr>
                            <td>Values</td>
                            <td><span>Any string</span></td>
                        </tr>
                        <tr>
                            <td>Required</td>
                            <td><b>yes</b></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
    </div>
.. raw:: html

    <h1>Introduction</h1>
    <p>This documentation describes the Lua configuration for <code>Syntax</code>.</p>
    <p>Some values are typed. Specify types with built-in unary functions which take the value to be typed. For example, to place a dog in field animal, write <code>dog { name = "fido" }</code>. Types are indicated in the documentation as a word in parentheses.</p>
    <p>Note that types only need to be specified where indicated.</p>
    <p>Also, if a type only has one required field, the field can be filled directly, so:</p>
    <pre><code>repeat { count = 4 }</code></pre>
    <p>may be shortened to:</p>
    <pre><code>repeat 4</code></pre>
    <h2>Document Root</h2>
    <p>The root element of the document is:</p>
    <a href="#com.zarbosoft.merman.syntax.Syntax">Syntax</a>
    <h1>Types</h1>
    <div>
        <a name="com.zarbosoft.merman.editor.visual.tags.FreeTag"></a>
        <h2>FreeTag</h2>
        <p>A user specified tag.</p>
        <h4>field: value</h4>
        <p>The value of the tag.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.editor.visual.tags.GlobalTag"></a>
        <h2>GlobalTag</h2>
        <p>A tag that indicates editor state, such as "modified" when the document has unsaved changes.</p>
        <h4>field: value</h4>
        <p>The value of the tag.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.editor.visual.tags.PartTag"></a>
        <h2>PartTag</h2>
        <p>A tag that indicates an atom part type.</p>
        <h4>field: value</h4>
        <p>The value of the tag.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.editor.visual.tags.StateTag"></a>
        <h2>StateTag</h2>
        <p>A tag that indicates an atom state, such as "compact".</p>
        <h4>field: value</h4>
        <p>The value of the tag.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.editor.visual.tags.TypeTag"></a>
        <h2>TypeTag</h2>
        <p>A tag that indicates an atom type id.</p>
        <h4>field: value</h4>
        <p>The value of the tag.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.HoverType"></a>
        <h2>HoverType</h2>
        <p>Show information about the atom hovered by the mouse.</p>
        <h4>field: node</h4>
        <p>Display the type of the atom.</p>
        <table>
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
        </table>
        <h4>field: part</h4>
        <p>Display the type of the atom part.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.Indicators"></a>
        <h2>Indicators</h2>
        <p>Show symbols in the gutter based on tags.</p>
        <h4>field: converse_padding</h4>
        <p>Separation between the symbol and the converse edge of the screen.</p>
        <table>
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
        </table>
        <h4>field: converse_start</h4>
        <p>If true, show the symbol by the near converse edge of the screen. Otherwise, the far.</p>
        <table>
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
        </table>
        <h4>field: indicators</h4>
        <p>Show a floating indicator symbol based on the current global and selection tags.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.modules.Indicators$Indicator">Indicators$Indicator</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: transverse_padding</h4>
        <p>Separation between the symbol and the transverse edge of the screen.</p>
        <table>
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
        </table>
        <h4>field: transverse_start</h4>
        <p>If true, show the symbols at the start of the gutter. Otherwise, the end.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.Indicators$Indicator"></a>
        <h2>Indicators$Indicator</h2>
        <p>An indicator is a single symbol that is shown or hidden based on active tags.</p>
        <h4>field: id</h4>
        <p>The symbol will have this type tag when shown.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: symbol</h4>
        <p>The symbol to show.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">SymbolImage</a></li>
                            <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">SymbolSpace</a></li>
                            <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">SymbolText</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Show the symbol when these tags are present.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">FreeTag</a></li>
                                <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">GlobalTag</a></li>
                                <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">PartTag</a></li>
                                <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">StateTag</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">TypeTag</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.LuaActions"></a>
        <h2>LuaActions</h2>
        <p>Use Lua functions as actions.</p>
        <h4>field: actions</h4>
        <p>A mapping of action names to Lua functions. Each function takes a single <code>context</code> argument and returns a boolean, true if the action modified the application state. <code>context</code> is an object with the following functions: <code>act</code>. <code>act</code> takes a string, the name of another action, and runs it, and returns true if the action modified the application state.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.Modes"></a>
        <h2>Modes</h2>
        <p>Activate and deactivate global mode tags via actions.</p>
        <h4>field: states</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.SelectionType"></a>
        <h2>SelectionType</h2>
        <p>Show information about the atom the cursor's in</p>
        <h4>field: format</h4>
        <p>The format of the text to display in the banner.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.format.Format">Format</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.hotkeys.HotkeyRule"></a>
        <h2>HotkeyRule</h2>
        <p>Hotkey definitions that are enabled based on tags.</p>
        <h4>field: free_typing</h4>
        <p>Text keys that don't match a hotkey are passed to the selected primitive.</p>
        <table>
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
        </table>
        <h4>field: hotkeys</h4>
        <p>Hotkeys to use when the tags match.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>List of:</p><span><p>Any of (specify type):</p>
                                <ul>
                                    <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">Sequence</a></li>
                                    <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">Terminal</a></li>
                                    <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">Union</a></li>
                                </ul></span></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: with</h4>
        <p>These tags must be present.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">FreeTag</a></li>
                                <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">GlobalTag</a></li>
                                <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">PartTag</a></li>
                                <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">StateTag</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">TypeTag</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: without</h4>
        <p>These tags must be absent.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">FreeTag</a></li>
                                <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">GlobalTag</a></li>
                                <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">PartTag</a></li>
                                <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">StateTag</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">TypeTag</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.hotkeys.Hotkeys"></a>
        <h2>Hotkeys</h2>
        <p>Trigger actions with keyboard and mouse button presses.</p>
        <h4>field: rules</h4>
        <p>A list of hotkey rules.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.modules.hotkeys.HotkeyRule">HotkeyRule</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: show_details</h4>
        <p>Show the current input sequence and possible actions when an input is received in an incomplete sequence.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.hotkeys.Key"></a>
        <h2>Key</h2>
        <p>Any type of binary input.</p>
        <ul>
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
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.hotkeys.grammar.Sequence"></a>
        <h2>Sequence</h2>
        <p>Match each subpattern in order.</p>
        <h4>field: nodes</h4>
        <p>The list of rules to match in sequence.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">Sequence</a></li>
                                <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">Terminal</a></li>
                                <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">Union</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.hotkeys.grammar.Terminal"></a>
        <h2>Terminal</h2>
        <p>Match a single key.</p>
        <h4>field: key</h4>
        <p>The input that is being pressed or released.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.modules.hotkeys.Key">Key</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: modifiers</h4>
        <p>Inputs that must be active for this rule to match.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><a href="#com.zarbosoft.merman.modules.hotkeys.Key">Key</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: press</h4>
        <p>True if the input is pressed, false if the input is released.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.modules.hotkeys.grammar.Union"></a>
        <h2>Union</h2>
        <p>Match any of the subpatterns.</p>
        <h4>field: nodes</h4>
        <p>All rules that may match.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(seq) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Sequence">Sequence</a></li>
                                <li><span>(key) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Terminal">Terminal</a></li>
                                <li><span>(or) </span><a href="#com.zarbosoft.merman.modules.hotkeys.grammar.Union">Union</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.FreeAtomType"></a>
        <h2>FreeAtomType</h2>
        <p>A general syntax defined atom type.</p>
        <h4>field: alignments</h4>
        <p>Create alignments in the atom with the mapped ids.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(absolute) </span><a href="#com.zarbosoft.merman.syntax.alignments.AbsoluteAlignmentDefinition">AbsoluteAlignmentDefinition</a></li>
                                <li><span>(concensus) </span><a href="#com.zarbosoft.merman.syntax.alignments.ConcensusAlignmentDefinition">ConcensusAlignmentDefinition</a></li>
                                <li><span>(relative) </span><a href="#com.zarbosoft.merman.syntax.alignments.RelativeAlignmentDefinition">RelativeAlignmentDefinition</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: associate_forward</h4>
        <p>When filling a suffix or prefix gap, the resultant atom will be raised up the tree based on its associativity. For example, suppose in the document <code>a + b</code> you type <code>+ c</code>. If <code>+</code> is back associative, the resultant tree will be equivalent to <code>(a + b) + c</code>. If <code>+</code> is front associative, the resultant tree will be equivalent to <code>a + (b + c)</code>. This is a translation of mathematical operator associativity. Associativity only applies to atoms of the same <code>precedence</code>.</p>
        <table>
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
        </table>
        <h4>field: auto_choose_ambiguity</h4>
        <p>If this type is a suggestion and there are less than this many choices, auto-choose this type.</p>
        <table>
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
                <td><code>1</code></td>
            </tr>
        </table>
        <h4>field: back</h4>
        <p>This describes the format of the data on disk. Modifiable back parts must have a corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">BackArray</a></li>
                                <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">BackDataArray</a></li>
                                <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">BackDataAtom</a></li>
                                <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">BackDataJSONFloat</a></li>
                                <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">BackDataJSONInt</a></li>
                                <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">BackDataKey</a></li>
                                <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">BackDataPrimitive</a></li>
                                <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">BackDataRecord</a></li>
                                <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">BackDataRootArray</a></li>
                                <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">BackDataType</a></li>
                                <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">BackJSONFalse</a></li>
                                <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">BackJSONFloat</a></li>
                                <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">BackJSONInt</a></li>
                                <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">BackJSONNull</a></li>
                                <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">BackJSONTrue</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">BackPrimitive</a></li>
                                <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">BackRecord</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">BackType</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: depth_score</h4>
        <p>When calculating depth for windowing, this is the value the atom increases the depth score by.</p>
        <table>
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
        </table>
        <h4>field: front</h4>
        <p>This describes how the atom is represented in the editor. Modifiable must have a corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataArray">FrontDataArray</a></li>
                                <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataAtom">FrontDataAtom</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataPrimitive">FrontDataPrimitive</a></li>
                                <li><span>(symbol) </span><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: id</h4>
        <p>The id of the atom type. This must be unique among atom types and groups.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: middle</h4>
        <p>The editable data this atom contains.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleArray">MiddleArray</a></li>
                                <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleAtom">MiddleAtom</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddlePrimitive">MiddlePrimitive</a></li>
                                <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleRecord">MiddleRecord</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: name</h4>
        <p>A name for human consumption.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: precedence</h4>
        <p>When filling a suffix or prefix gap, the resultant atom will be raised up the tree</p>
        <table>
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
        </table>
        <h4>field: tags</h4>
        <p>Tags for this atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.GapAtomType"></a>
        <h2>GapAtomType</h2>
        <p>A gap.</p>
        <h4>field: prefix</h4>
        <p>Front parts to add before the gap text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: suffix</h4>
        <p>Front parts to add after the gap text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Add <code>free</code> tags with these values.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.Padding"></a>
        <h2>Padding</h2>
        <p>Padding around source content (not including banner, details, indicators, etc).</p>
        <h4>field: converse_end</h4>
        <p>Pad the converse end by this many pixels.</p>
        <table>
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
        </table>
        <h4>field: converse_start</h4>
        <p>Pad the converse start by this many pixels.</p>
        <table>
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
        </table>
        <h4>field: transverse_end</h4>
        <p>Pad the transverse end by this many pixels.</p>
        <table>
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
        </table>
        <h4>field: transverse_start</h4>
        <p>Pad the transverse start by this many pixels.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.PrefixGapAtomType"></a>
        <h2>PrefixGapAtomType</h2>
        <p>A gap that wraps a child atom. Fills to an atom that prefixes the child atom.</p>
        <h4>field: infix</h4>
        <p>Front parts to add between the gap text and child atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: prefix</h4>
        <p>Front parts to add before the gap text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: suffix</h4>
        <p>Front parts to add after the child atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Add <code>free</code> tags with these values.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.RootAtomType"></a>
        <h2>RootAtomType</h2>
        <p>The type of the root atom. In luxem documents, the root atom itself is outside the document, but the array (or whatever values it holds) become the document's root.</p>
        <h4>field: alignments</h4>
        <p>See FreeAtomType.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(absolute) </span><a href="#com.zarbosoft.merman.syntax.alignments.AbsoluteAlignmentDefinition">AbsoluteAlignmentDefinition</a></li>
                                <li><span>(concensus) </span><a href="#com.zarbosoft.merman.syntax.alignments.ConcensusAlignmentDefinition">ConcensusAlignmentDefinition</a></li>
                                <li><span>(relative) </span><a href="#com.zarbosoft.merman.syntax.alignments.RelativeAlignmentDefinition">RelativeAlignmentDefinition</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: back</h4>
        <p>See FreeAtomType.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">BackArray</a></li>
                                <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">BackDataArray</a></li>
                                <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">BackDataAtom</a></li>
                                <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">BackDataJSONFloat</a></li>
                                <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">BackDataJSONInt</a></li>
                                <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">BackDataKey</a></li>
                                <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">BackDataPrimitive</a></li>
                                <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">BackDataRecord</a></li>
                                <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">BackDataRootArray</a></li>
                                <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">BackDataType</a></li>
                                <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">BackJSONFalse</a></li>
                                <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">BackJSONFloat</a></li>
                                <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">BackJSONInt</a></li>
                                <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">BackJSONNull</a></li>
                                <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">BackJSONTrue</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">BackPrimitive</a></li>
                                <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">BackRecord</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">BackType</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: front</h4>
        <p>See FreeAtomType.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataArray">FrontDataArray</a></li>
                                <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataAtom">FrontDataAtom</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.front.FrontDataPrimitive">FrontDataPrimitive</a></li>
                                <li><span>(symbol) </span><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: middle</h4>
        <p>See FreeAtomType.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleArray">MiddleArray</a></li>
                                <li><span>(atom) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleAtom">MiddleAtom</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddlePrimitive">MiddlePrimitive</a></li>
                                <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.middle.MiddleRecord">MiddleRecord</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>See FreeAtomType.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.SuffixGapAtomType"></a>
        <h2>SuffixGapAtomType</h2>
        <p>A gap that wraps a child atom. Fills to an atom that suffixes the child atom.</p>
        <h4>field: infix</h4>
        <p>Front parts to add between the gap text and child atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: prefix</h4>
        <p>Front parts to add before the child atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: suffix</h4>
        <p>Front parts to add after the gap text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Add <code>free</code> tags with these values.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.Syntax"></a>
        <h2>Syntax</h2>
        <p>A syntax describes the de/serialization, interaction, and display of a document. A document is a syntax tree encoded as luxem or JSON. The syntax breaks the tree up into atoms which are the basis for interaction and display.<br><br>A merman syntax file is a Lua script that returns a table describing the syntax. When you open a source file in merman, it automatically loads the corresponding syntax file from <code>~/.config/merman/syntaxes</code> (<code>~/Library/Preferences/merman/syntaxes</code> on Mac, something like <code>c:UsersUserAppDatamermansyntaxes</code> on Windows - <code>syntax_luxem.lua</code> is placed there the first time you run merman so you can search for that) based on the source file extension.</p>
        <h4>field: animate_course_placement</h4>
        <p>Slide courses into position.</p>
        <table>
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
        </table>
        <h4>field: animate_details</h4>
        <p>Slide the contents of the details pane when it changes.</p>
        <table>
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
        </table>
        <h4>field: background</h4>
        <p>The background color of the document.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">ModelColor$RGB</a></li>
                            <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">ModelColor$RGBA</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: banner_pad</h4>
        <p>Pad the banner pane.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.Padding">Padding</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: converse_direction</h4>
        <p>The direction of text flow in a line. For English, this will be RIGHT. Note that values other than RIGHT may not work, since JavaFX has limited text direction support.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.Syntax$Direction">Syntax$Direction</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
            <tr>
                <td>Default value</td>
                <td><code>right</code></td>
            </tr>
        </table>
        <h4>field: detail_pad</h4>
        <p>Pad the detail pane.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.Padding">Padding</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: detail_span</h4>
        <p>The max transverse span for details panes, excluding padding.</p>
        <table>
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
        </table>
        <h4>field: ellipsize_threshold</h4>
        <p>Limit the window to this depth span.</p>
        <table>
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
        </table>
        <h4>field: gap</h4>
        <p>The gap type is used when editing the document, for new data whose type is not yet known.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.GapAtomType">GapAtomType</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: gap_choice_style</h4>
        <p>Style of the gap choice selection box.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.style.BoxStyle">BoxStyle</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: gap_placeholder</h4>
        <p>Placeholder for text in gap choice previews.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">SymbolImage</a></li>
                            <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">SymbolSpace</a></li>
                            <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">SymbolText</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: groups</h4>
        <p>Pseudo-types representing groups of types. Group ids can be used anywhere a type id is required.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>List of:</p><span>Any string</span></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: lay_brick_batch_size</h4>
        <p>Generate bricks in this batch size when jumping, scrolling, and editing.</p>
        <table>
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
        </table>
        <h4>field: modules</h4>
        <p>A list of modules to activate. Listed are modules bundled with this distribution, but addional modules may be installed and used.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(hover_type) </span><a href="#com.zarbosoft.merman.modules.HoverType">HoverType</a></li>
                                <li><span>(indicators) </span><a href="#com.zarbosoft.merman.modules.Indicators">Indicators</a></li>
                                <li><span>(lua_actions) </span><a href="#com.zarbosoft.merman.modules.LuaActions">LuaActions</a></li>
                                <li><span>(modes) </span><a href="#com.zarbosoft.merman.modules.Modes">Modes</a></li>
                                <li><span>(selection_type) </span><a href="#com.zarbosoft.merman.modules.SelectionType">SelectionType</a></li>
                                <li><span>(hotkeys) </span><a href="#com.zarbosoft.merman.modules.hotkeys.Hotkeys">Hotkeys</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: pad</h4>
        <p>Pad the document.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.Padding">Padding</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: placeholder</h4>
        <p>Character to substitute for non-printing characters in primitives.</p>
        <table>
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
        </table>
        <h4>field: prefix_gap</h4>
        <p>The prefix gap type is similar to the gap type, but is used when enclosing an existing atom in a new atom, where the new atom visually precedes the existing atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.PrefixGapAtomType">PrefixGapAtomType</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: pretty_save</h4>
        <p>Add spaces to make human reading of the source easier.</p>
        <table>
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
        </table>
        <h4>field: retry_expand_factor</h4>
        <p>Retry course expansion when converse deficit has increased by this factor.</p>
        <table>
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
        </table>
        <h4>field: root</h4>
        <p>The type of the root array in a document. This is not used when pasting code; in that case the context is used to determine the paste's potential root type.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.RootAtomType">RootAtomType</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: scroll_alot_factor</h4>
        <p>The percentage of the screen transverse span to jump when scrolling alot.</p>
        <table>
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
        </table>
        <h4>field: scroll_factor</h4>
        <p>The percentage of the screen transverse span to jump when scrolling.</p>
        <table>
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
        </table>
        <h4>field: start_windowed</h4>
        <p>When opening a document, immediately restrict the window to the tree that starts at the root atom.</p>
        <table>
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
        </table>
        <h4>field: styles</h4>
        <p>Styles control how bricks and other visual elements (selection, hover, banner, details, indicators, etc) are displayed. When a visual element is styled, each style's tags are compared to the brick's tags in turn. A composite style is built by merging the properties of each matching style, with later matching style properties overriding earlier properties.<br><br>Each brick assumes a number of tags from their corresponding front parts, atom types, and any global tags. Selection and hover visuals assume the tags of the relevant front part and any global tags. The banner assumes the <code>part</code> tag <code>banner</code> and any global tags. The details assume the <code>part</code> tag <code>details</code> and any global tags. In addition to the details tag, if the details contain a selection, the choices additionally assume <code>part</code> tag <code>details_choice</code> and the selection assumes <code>part</code> tag <code>details_selection</code>.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.style.Style">Style</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: suffix_gap</h4>
        <p>The suffix gap type is similar to the gap type, but is used when enclosing an existing atom in a new atom, where the new atom visually succeeds the existing atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.SuffixGapAtomType">SuffixGapAtomType</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: transverse_direction</h4>
        <p>The direction of successive lines. For English, this will be DOWN.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.Syntax$Direction">Syntax$Direction</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
            <tr>
                <td>Default value</td>
                <td><code>down</code></td>
            </tr>
        </table>
        <h4>field: type</h4>
        <p>The encoding of source files with this syntax.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.Syntax$BackType">Syntax$BackType</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
            <tr>
                <td>Default value</td>
                <td><code>luxem</code></td>
            </tr>
        </table>
        <h4>field: types</h4>
        <p>The definitions of all distinct element types in a document.<br>A type with the id '__gap' and a single middle primitive element named 'value' must exist. This will be used as a placeholder when entering text before it is distinguishable as any other defined element.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.FreeAtomType">FreeAtomType</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.Syntax$BackType"></a>
        <h2>Syntax$BackType</h2>
        <p>The encoding of source files.</p>
        <ul>
            <li><code>luxem</code><span>Back parts and source files are in luxem format.</span></li>
            <li><code>json</code><span>Back parts and source files are in JSON format.</span></li>
        </ul>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.Syntax$Direction"></a>
        <h2>Syntax$Direction</h2>
        <p>A direction of text flow.</p>
        <ul>
            <li><code>up</code><span></span></li>
            <li><code>down</code><span></span></li>
            <li><code>left</code><span></span></li>
            <li><code>right</code><span></span></li>
        </ul>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.alignments.AbsoluteAlignmentDefinition"></a>
        <h2>AbsoluteAlignmentDefinition</h2>
        <p>Aligns bricks a fixed offset from the converse start of the screen.</p>
        <h4>field: offset</h4>
        <p>Offset in pixels.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.alignments.ConcensusAlignmentDefinition"></a>
        <h2>ConcensusAlignmentDefinition</h2>
        <p>Aligns all bricks with the brick with the rightmost converse start.</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.alignments.RelativeAlignmentDefinition"></a>
        <h2>RelativeAlignmentDefinition</h2>
        <p>Aligns bricks with an offset relative to another alignment.</p>
        <h4>field: base</h4>
        <p>The id of the base alignment.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: offset</h4>
        <p>The difference between this alignment and this base in pixels.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackArray"></a>
        <h2>BackArray</h2>
        <p>A fixed array.</p>
        <h4>field: elements</h4>
        <p>This sequence of elements will appear in the source file.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">BackArray</a></li>
                                <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">BackDataArray</a></li>
                                <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">BackDataAtom</a></li>
                                <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">BackDataJSONFloat</a></li>
                                <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">BackDataJSONInt</a></li>
                                <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">BackDataKey</a></li>
                                <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">BackDataPrimitive</a></li>
                                <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">BackDataRecord</a></li>
                                <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">BackDataRootArray</a></li>
                                <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">BackDataType</a></li>
                                <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">BackJSONFalse</a></li>
                                <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">BackJSONFloat</a></li>
                                <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">BackJSONInt</a></li>
                                <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">BackJSONNull</a></li>
                                <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">BackJSONTrue</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">BackPrimitive</a></li>
                                <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">BackRecord</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">BackType</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataArray"></a>
        <h2>BackDataArray</h2>
        <p>An editable value.</p>
        <h4>field: middle</h4>
        <p>Read the array into or write from the middle array with this id.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataAtom"></a>
        <h2>BackDataAtom</h2>
        <p>An editable value.</p>
        <h4>field: middle</h4>
        <p>Read the child atom into or write from the middle atom with this id.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataJSONFloat"></a>
        <h2>BackDataJSONFloat</h2>
        <p>An editable value. Only valid with a JSON back type.</p>
        <h4>field: middle</h4>
        <p>The id of the corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataJSONInt"></a>
        <h2>BackDataJSONInt</h2>
        <p>An editable value. Only valid with a JSON back type.</p>
        <h4>field: middle</h4>
        <p>The id of the corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataKey"></a>
        <h2>BackDataKey</h2>
        <p>A key in an array.</p>
        <h4>field: middle</h4>
        <p>Read the key into or write from the middle primitive with this id.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataPrimitive"></a>
        <h2>BackDataPrimitive</h2>
        <p></p>
        <h4>field: middle</h4>
        <p>Read the primitive into or write from the middle primitive with this id.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataRecord"></a>
        <h2>BackDataRecord</h2>
        <p>An editable record.</p>
        <h4>field: middle</h4>
        <p>Read the record into or write from the middle array with this id.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataRootArray"></a>
        <h2>BackDataRootArray</h2>
        <p>An editable value. De/serializes an array in luxem that has no begin <code>[</code> and end <code>]</code>. This may only be used in the root atom type.</p>
        <h4>field: middle</h4>
        <p>The id of the corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackDataType"></a>
        <h2>BackDataType</h2>
        <p>An editable luxem type.</p>
        <h4>field: type</h4>
        <p>Read the type into or write from the middle primitive with this id.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: value</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">BackArray</a></li>
                            <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">BackDataArray</a></li>
                            <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">BackDataAtom</a></li>
                            <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">BackDataJSONFloat</a></li>
                            <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">BackDataJSONInt</a></li>
                            <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">BackDataKey</a></li>
                            <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">BackDataPrimitive</a></li>
                            <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">BackDataRecord</a></li>
                            <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">BackDataRootArray</a></li>
                            <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">BackDataType</a></li>
                            <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">BackJSONFalse</a></li>
                            <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">BackJSONFloat</a></li>
                            <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">BackJSONInt</a></li>
                            <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">BackJSONNull</a></li>
                            <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">BackJSONTrue</a></li>
                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">BackPrimitive</a></li>
                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">BackRecord</a></li>
                            <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">BackType</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONFalse"></a>
        <h2>BackJSONFalse</h2>
        <p>A fixed value. Only valid with a JSON back type.</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONFloat"></a>
        <h2>BackJSONFloat</h2>
        <p>A fixed value. Only valid with a JSON back type.</p>
        <h4>field: value</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONInt"></a>
        <h2>BackJSONInt</h2>
        <p>A fixed value. Only valid with a JSON back type.</p>
        <h4>field: value</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONNull"></a>
        <h2>BackJSONNull</h2>
        <p>A fixed value. Only valid with a JSON back type.</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackJSONTrue"></a>
        <h2>BackJSONTrue</h2>
        <p>A fixed value. Only valid with a JSON back type.</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackPrimitive"></a>
        <h2>BackPrimitive</h2>
        <p>A fixed value.</p>
        <h4>field: value</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackRecord"></a>
        <h2>BackRecord</h2>
        <p>A fixed record.</p>
        <h4>field: pairs</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Nested:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">BackArray</a></li>
                                <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">BackDataArray</a></li>
                                <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">BackDataAtom</a></li>
                                <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">BackDataJSONFloat</a></li>
                                <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">BackDataJSONInt</a></li>
                                <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">BackDataKey</a></li>
                                <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">BackDataPrimitive</a></li>
                                <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">BackDataRecord</a></li>
                                <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">BackDataRootArray</a></li>
                                <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">BackDataType</a></li>
                                <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">BackJSONFalse</a></li>
                                <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">BackJSONFloat</a></li>
                                <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">BackJSONInt</a></li>
                                <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">BackJSONNull</a></li>
                                <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">BackJSONTrue</a></li>
                                <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">BackPrimitive</a></li>
                                <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">BackRecord</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">BackType</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.back.BackType"></a>
        <h2>BackType</h2>
        <p>A fixed luxem type.</p>
        <h4>field: type</h4>
        <p>The type string.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: value</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(array) </span><a href="#com.zarbosoft.merman.syntax.back.BackArray">BackArray</a></li>
                            <li><span>(data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataArray">BackDataArray</a></li>
                            <li><span>(data_atom) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataAtom">BackDataAtom</a></li>
                            <li><span>(json_data_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONFloat">BackDataJSONFloat</a></li>
                            <li><span>(json_data_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataJSONInt">BackDataJSONInt</a></li>
                            <li><span>(data_key) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataKey">BackDataKey</a></li>
                            <li><span>(data_primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataPrimitive">BackDataPrimitive</a></li>
                            <li><span>(data_record) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRecord">BackDataRecord</a></li>
                            <li><span>(root_data_array) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataRootArray">BackDataRootArray</a></li>
                            <li><span>(data_type) </span><a href="#com.zarbosoft.merman.syntax.back.BackDataType">BackDataType</a></li>
                            <li><span>(json_false) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFalse">BackJSONFalse</a></li>
                            <li><span>(json_float) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONFloat">BackJSONFloat</a></li>
                            <li><span>(json_int) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONInt">BackJSONInt</a></li>
                            <li><span>(json_null) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONNull">BackJSONNull</a></li>
                            <li><span>(json_true) </span><a href="#com.zarbosoft.merman.syntax.back.BackJSONTrue">BackJSONTrue</a></li>
                            <li><span>(primitive) </span><a href="#com.zarbosoft.merman.syntax.back.BackPrimitive">BackPrimitive</a></li>
                            <li><span>(record) </span><a href="#com.zarbosoft.merman.syntax.back.BackRecord">BackRecord</a></li>
                            <li><span>(type) </span><a href="#com.zarbosoft.merman.syntax.back.BackType">BackType</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.format.Format"></a>
        <h2>Format</h2>
        <p>Formats a string which is the concatenation of all elements.</p>
        <h4>field: elements</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(lit) </span><a href="#com.zarbosoft.merman.syntax.format.Literal">Literal</a></li>
                                <li><span>(ref) </span><a href="#com.zarbosoft.merman.syntax.format.Reference">Reference</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.format.Literal"></a>
        <h2>Literal</h2>
        <p>Fixed text.</p>
        <h4>field: value</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.format.Reference"></a>
        <h2>Reference</h2>
        <p>Text provided dynamically. Reference names depend on context - look at specific usages for valid names.</p>
        <h4>field: name</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.ConditionNode"></a>
        <h2>ConditionNode</h2>
        <p>Show or hide a front part based on properties of the atom.</p>
        <h4>field: invert</h4>
        <p>Invert <code>is</code>.</p>
        <table>
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
        </table>
        <h4>field: is</h4>
        <p>The condition in which to show this front item.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.front.ConditionNode$Is">ConditionNode$Is</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.ConditionNode$Is"></a>
        <h2>ConditionNode$Is</h2>
        <p>The property of the atom.</p>
        <ul>
            <li><code>precedent</code><span>The atom is precedent relative to its parent.</span></li>
        </ul>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.ConditionValue"></a>
        <h2>ConditionValue</h2>
        <p>Show or hide a front part based on properties of a value within an atom.</p>
        <h4>field: invert</h4>
        <p>Invert <code>is</code>.</p>
        <table>
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
        </table>
        <h4>field: is</h4>
        <p>The condition in which to show this front item.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.front.ConditionValue$Is">ConditionValue$Is</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: middle</h4>
        <p>The id of the middle part that the condition is based on.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.ConditionValue$Is"></a>
        <h2>ConditionValue$Is</h2>
        <p>The property of the value.</p>
        <ul>
            <li><code>empty</code><span>The value is empty.</span></li>
        </ul>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataArray"></a>
        <h2>FrontDataArray</h2>
        <p>Display an array of child atoms.</p>
        <h4>field: ellipsis</h4>
        <p>How to visualize the ellipsis.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">SymbolImage</a></li>
                            <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">SymbolSpace</a></li>
                            <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">SymbolText</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: middle</h4>
        <p>The id of the corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: prefix</h4>
        <p>What to display before every element in the array.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: separator</h4>
        <p>What to display between every two elements in the array.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: suffix</h4>
        <p>What to display after every element in the array.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><a href="#com.zarbosoft.merman.syntax.front.FrontSymbol">FrontSymbol</a></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: tag_first</h4>
        <p>Add the <code>part</code> tag with value <code>first</code> to the first element.</p>
        <table>
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
        </table>
        <h4>field: tag_last</h4>
        <p>Add the <code>part</code> tag with value <code>last</code> to the last element.</p>
        <table>
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
        </table>
        <h4>field: tags</h4>
        <p>Add <code>free</code> tags with these values.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataAtom"></a>
        <h2>FrontDataAtom</h2>
        <p>Display a child atom.</p>
        <h4>field: ellipsis</h4>
        <p>How to visualize the ellipsis.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">SymbolImage</a></li>
                            <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">SymbolSpace</a></li>
                            <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">SymbolText</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: middle</h4>
        <p>The id of the corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Tags for this front part. These are only used as context when the selection is in this part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.FrontDataPrimitive"></a>
        <h2>FrontDataPrimitive</h2>
        <p>Display text data.</p>
        <h4>field: middle</h4>
        <p>The id of the corresponding middle part.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Add <code>free</code> tags with these values.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: tags</h4>
        <p>Add <code>free</code> tags with these values.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.front.FrontSymbol"></a>
        <h2>FrontSymbol</h2>
        <p>Display a fixed symbol (text, space, image).</p>
        <h4>field: condition</h4>
        <p>Only display this front element when the condition is matched. A symbol's text will be used to match the atom type when filling a gap. This symbol will be ignored though if it has a condition which is off by default.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(precedential) </span><a href="#com.zarbosoft.merman.syntax.front.ConditionNode">ConditionNode</a></li>
                            <li><span>(value) </span><a href="#com.zarbosoft.merman.syntax.front.ConditionValue">ConditionValue</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: gap_key</h4>
        <p>Use this string as a key for matching the atom when filling a gap. This is intended for symbols that do not contain text (image) but it may also be used to override the text in a text node.</p>
        <table>
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
        </table>
        <h4>field: tags</h4>
        <p>Add these tags to the symbol's brick.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span>Any string</span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: type</h4>
        <p>The type of symbol.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(image) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolImage">SymbolImage</a></li>
                            <li><span>(space) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolSpace">SymbolSpace</a></li>
                            <li><span>(text) </span><a href="#com.zarbosoft.merman.syntax.symbol.SymbolText">SymbolText</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.MiddleArray"></a>
        <h2>MiddleArray</h2>
        <p></p>
        <h4>field: type</h4>
        <p>The id of the type of each atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.MiddleAtom"></a>
        <h2>MiddleAtom</h2>
        <p></p>
        <h4>field: type</h4>
        <p>The id of the type of the child atom.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.MiddlePrimitive"></a>
        <h2>MiddlePrimitive</h2>
        <p></p>
        <h4>field: pattern</h4>
        <p>This defines the pattern that the text of the primitive takes. Note that if specified, the pattern will be checked every time the primitive is modified. On long primitives this can be very slow.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(any) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Any">Any</a></li>
                            <li><span>(digits) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Digits">Digits</a></li>
                            <li><span>(letters) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Letters">Letters</a></li>
                            <li><span>(maybe) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Maybe">Maybe</a></li>
                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternSequence">PatternSequence</a></li>
                            <li><span>(string) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternString">PatternString</a></li>
                            <li><span>(union) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternUnion">PatternUnion</a></li>
                            <li><span>(rep0) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat0">Repeat0</a></li>
                            <li><span>(rep1) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat1">Repeat1</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.MiddleRecord"></a>
        <h2>MiddleRecord</h2>
        <p>A record is effectively an array with elements that have record keys.</p>
        <h4>field: type</h4>
        <p>The id of the type of the record elements.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.Any"></a>
        <h2>Any</h2>
        <p>Match any single character.</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.Digits"></a>
        <h2>Digits</h2>
        <p>Match any digit (0-9)</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.Letters"></a>
        <h2>Letters</h2>
        <p>Match any letter (a-z, A-Z)</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.Maybe"></a>
        <h2>Maybe</h2>
        <p>Match the subpattern 0 or 1 times.</p>
        <h4>field: pattern</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(any) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Any">Any</a></li>
                            <li><span>(digits) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Digits">Digits</a></li>
                            <li><span>(letters) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Letters">Letters</a></li>
                            <li><span>(maybe) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Maybe">Maybe</a></li>
                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternSequence">PatternSequence</a></li>
                            <li><span>(string) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternString">PatternString</a></li>
                            <li><span>(union) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternUnion">PatternUnion</a></li>
                            <li><span>(rep0) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat0">Repeat0</a></li>
                            <li><span>(rep1) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat1">Repeat1</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.PatternSequence"></a>
        <h2>PatternSequence</h2>
        <p>Match each subpattern in sequence.</p>
        <h4>field: children</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(any) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Any">Any</a></li>
                                <li><span>(digits) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Digits">Digits</a></li>
                                <li><span>(letters) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Letters">Letters</a></li>
                                <li><span>(maybe) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Maybe">Maybe</a></li>
                                <li><span>(seq) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternSequence">PatternSequence</a></li>
                                <li><span>(string) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternString">PatternString</a></li>
                                <li><span>(union) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternUnion">PatternUnion</a></li>
                                <li><span>(rep0) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat0">Repeat0</a></li>
                                <li><span>(rep1) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat1">Repeat1</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.PatternString"></a>
        <h2>PatternString</h2>
        <p>An easy way to construct a sequence of characters.</p>
        <h4>field: string</h4>
        <p>The character sequence to match.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.PatternUnion"></a>
        <h2>PatternUnion</h2>
        <p>Match any one subpattern.</p>
        <h4>field: children</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>List of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(any) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Any">Any</a></li>
                                <li><span>(digits) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Digits">Digits</a></li>
                                <li><span>(letters) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Letters">Letters</a></li>
                                <li><span>(maybe) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Maybe">Maybe</a></li>
                                <li><span>(seq) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternSequence">PatternSequence</a></li>
                                <li><span>(string) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternString">PatternString</a></li>
                                <li><span>(union) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternUnion">PatternUnion</a></li>
                                <li><span>(rep0) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat0">Repeat0</a></li>
                                <li><span>(rep1) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat1">Repeat1</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.Repeat0"></a>
        <h2>Repeat0</h2>
        <p>Repeat the subpattern 0 or more times.</p>
        <h4>field: pattern</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(any) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Any">Any</a></li>
                            <li><span>(digits) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Digits">Digits</a></li>
                            <li><span>(letters) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Letters">Letters</a></li>
                            <li><span>(maybe) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Maybe">Maybe</a></li>
                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternSequence">PatternSequence</a></li>
                            <li><span>(string) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternString">PatternString</a></li>
                            <li><span>(union) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternUnion">PatternUnion</a></li>
                            <li><span>(rep0) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat0">Repeat0</a></li>
                            <li><span>(rep1) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat1">Repeat1</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.middle.primitive.Repeat1"></a>
        <h2>Repeat1</h2>
        <p>Repeat the subpattern 1 or more times.</p>
        <h4>field: pattern</h4>
        <p></p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(any) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Any">Any</a></li>
                            <li><span>(digits) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Digits">Digits</a></li>
                            <li><span>(letters) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Letters">Letters</a></li>
                            <li><span>(maybe) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Maybe">Maybe</a></li>
                            <li><span>(seq) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternSequence">PatternSequence</a></li>
                            <li><span>(string) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternString">PatternString</a></li>
                            <li><span>(union) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.PatternUnion">PatternUnion</a></li>
                            <li><span>(rep0) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat0">Repeat0</a></li>
                            <li><span>(rep1) </span><a href="#com.zarbosoft.merman.syntax.middle.primitive.Repeat1">Repeat1</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.style.BoxStyle"></a>
        <h2>BoxStyle</h2>
        <p>Properties if the style is applied to a box.</p>
        <h4>field: fill</h4>
        <p>Fill the box.</p>
        <table>
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
        </table>
        <h4>field: fill_color</h4>
        <p>Color of the fill.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">ModelColor$RGB</a></li>
                            <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">ModelColor$RGBA</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: line</h4>
        <p>Outline the box.</p>
        <table>
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
        </table>
        <h4>field: line_color</h4>
        <p>Color of the outline.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">ModelColor$RGB</a></li>
                            <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">ModelColor$RGBA</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: line_thickness</h4>
        <p>Thickness of the outline in pixels.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: pad</h4>
        <p>Distance fron the contents to the edge of the box in pixels.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: round_end</h4>
        <p>Round the end corner.</p>
        <table>
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
        </table>
        <h4>field: round_outer_edges</h4>
        <p>Round the outer corners.</p>
        <table>
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
        </table>
        <h4>field: round_radius</h4>
        <p>Round each rounded corner by this radius.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: round_start</h4>
        <p>Round the start corner.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.style.ModelColor$RGB"></a>
        <h2>ModelColor$RGB</h2>
        <p>An RGB color. Values are between 0 and 1, inclusive, with 1 being maximum intensity.</p>
        <h4>field: b</h4>
        <p>Blue</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: g</h4>
        <p>Green</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: r</h4>
        <p>Red</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.style.ModelColor$RGBA"></a>
        <h2>ModelColor$RGBA</h2>
        <p>An RGB color with alpha. Values are between 0 and 1, inclusive, with 1 being maximum intensity.</p>
        <h4>field: a</h4>
        <p>Alpha. 1 is opaque, 0 is transparent.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: b</h4>
        <p>Blue</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: g</h4>
        <p>Green</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: r</h4>
        <p>Red</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.style.ObboxStyle"></a>
        <h2>ObboxStyle</h2>
        <p>Properties if the style is applied to an obbox (a disjoint box that may start and end on different lines).</p>
        <h4>field: fill</h4>
        <p>Fill the obbox.</p>
        <table>
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
        </table>
        <h4>field: fill_color</h4>
        <p>Fill color.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">ModelColor$RGB</a></li>
                            <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">ModelColor$RGBA</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: line</h4>
        <p>Outline the obbox.</p>
        <table>
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
        </table>
        <h4>field: line_color</h4>
        <p>Color of the outline. Also used for the cursor when there is no selection.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">ModelColor$RGB</a></li>
                            <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">ModelColor$RGBA</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: line_thickness</h4>
        <p>Thickness of the outline in pixels. Also used for the cursor when there is no selection.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any decimal value</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: pad</h4>
        <p>Distance from the contents to the edge of the obbox in pixels.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: round_concave</h4>
        <p>Round concave corners.</p>
        <table>
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
        </table>
        <h4>field: round_end</h4>
        <p>Round the end corner.</p>
        <table>
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
        </table>
        <h4>field: round_inner_edges</h4>
        <p>Round the inner corners.</p>
        <table>
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
        </table>
        <h4>field: round_outer_edges</h4>
        <p>Round the outer corners.</p>
        <table>
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
        </table>
        <h4>field: round_radius</h4>
        <p>Round each rounded corner by this radius.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: round_start</h4>
        <p>Round the start corner.</p>
        <table>
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
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.style.Style"></a>
        <h2>Style</h2>
        <p>All properties required to style a visual element.</p>
        <h4>field: align</h4>
        <p>Align the converse start with the nearest alignment with this id. The alignment is sought starting at the element's parent and moving upwards to the root of the window/document.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: box</h4>
        <p>This only applies to boxes.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.style.BoxStyle">BoxStyle</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: color</h4>
        <p>This only applies to text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Any of (specify type):</p>
                        <ul>
                            <li><span>(rgb) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGB">ModelColor$RGB</a></li>
                            <li><span>(rgba) </span><a href="#com.zarbosoft.merman.syntax.style.ModelColor$RGBA">ModelColor$RGBA</a></li>
                        </ul></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: font</h4>
        <p>The font family name (JavaFX). This only applies to text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: font_size</h4>
        <p>This only applies to text.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: image</h4>
        <p>The filename of the image, either absolute or relative to the syntax directory. This only applies to image symbols.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: obbox</h4>
        <p>This only applies to obboxes.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><a href="#com.zarbosoft.merman.syntax.style.ObboxStyle">ObboxStyle</a></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: rotate</h4>
        <p>Rotation of the image, presumably in degrees.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: space</h4>
        <p>The converse span of a space symbol.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: space_after</h4>
        <p>Add a converse space of this many pixels after the element.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: space_before</h4>
        <p>Add a converse space of this many pixels before the element.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: space_transverse_after</h4>
        <p>Add a transverse space of this many pixels after the element.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: space_transverse_before</h4>
        <p>Add a transverse space of this many pixels before the element.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any integer</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
        <h4>field: split</h4>
        <p>Start this element on the next line.</p>
        <table>
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
        </table>
        <h4>field: with</h4>
        <p>These tags must be present.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">FreeTag</a></li>
                                <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">GlobalTag</a></li>
                                <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">PartTag</a></li>
                                <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">StateTag</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">TypeTag</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
        <h4>field: without</h4>
        <p>A style will apply to a brick if both the brick and the global tags contain none of these.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span><p>Set of:</p><span><p>Any of (specify type):</p>
                            <ul>
                                <li><span>(free) </span><a href="#com.zarbosoft.merman.editor.visual.tags.FreeTag">FreeTag</a></li>
                                <li><span>(global) </span><a href="#com.zarbosoft.merman.editor.visual.tags.GlobalTag">GlobalTag</a></li>
                                <li><span>(part) </span><a href="#com.zarbosoft.merman.editor.visual.tags.PartTag">PartTag</a></li>
                                <li><span>(state) </span><a href="#com.zarbosoft.merman.editor.visual.tags.StateTag">StateTag</a></li>
                                <li><span>(type) </span><a href="#com.zarbosoft.merman.editor.visual.tags.TypeTag">TypeTag</a></li>
                            </ul></span></span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><span>no</span></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.symbol.SymbolImage"></a>
        <h2>SymbolImage</h2>
        <p></p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.symbol.SymbolSpace"></a>
        <h2>SymbolSpace</h2>
        <p>This symbol is not drawn, but can take up space.</p>
        <p>This type has no fields.</p>
    </div>
    <br></br>
    <br></br>
    <div>
        <a name="com.zarbosoft.merman.syntax.symbol.SymbolText"></a>
        <h2>SymbolText</h2>
        <p></p>
        <h4>field: text</h4>
        <p>The text to display in the brick.</p>
        <table>
            <tr>
                <td>Values</td>
                <td><span>Any string</span></td>
            </tr>
            <tr>
                <td>Required</td>
                <td><b>yes</b></td>
            </tr>
        </table>
    </div>
    <br></br>
    <br></br>
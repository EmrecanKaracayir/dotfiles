# Visual Studio Code Shortcuts

This file documents shortcut mappings for Visual Studio Code. The shortcuts are grouped by action type.

> **Note:** In this file, **Super Key (`△`)** means pressing `⌃⌥⌘` together. With tools like [Kanata](https://github.com/jtroo/kanata), those modifiers can be mapped to a single physical key.

> **Note:** Many shortcuts follow a recurring pattern: `IJKL` maps to directional movement, and `X` is used for close or cancel actions. That pattern keeps related shortcuts consistent.

## Quick Shortcuts

Quick shortcuts are direct shortcuts that do not require **Super Key (`△`)** or key chords.

### Common

This category covers shortcuts commonly shared across apps.

| **Action** | **Mnemonic** | **Shortcut** |
|:-----------|:-------------|-------------:|
| Cut        | -            |         `⌘X` |
| Copy       | `C`opy       |         `⌘C` |
| Paste      | -            |         `⌘V` |
| Undo       | -            |         `⌘Z` |
| Redo       | -            |        `⇧⌘Z` |
| Select All | `A`ll        |         `⌘A` |
| Back       | -            |        `MB4` |
| Forward    | -            |        `MB5` |
| Save       | `S`ave       |         `⌘S` |
| Save As    | `S`ave       |        `⇧⌘S` |
| Settings   | -            |         `⌘,` |
| Hide       | `H`ide       |         `⌘H` |
| Quit       | `Q`uit       |         `⌘Q` |

### Caret

This category covers caret management and cursor positioning.

> **Note:** When a movement shortcut supports `⇧`, holding it extends the selection instead of only moving the caret.

| **Action**                       | **Mnemonic** | **Shortcut** |
|:---------------------------------|:-------------|-------------:|
| Add Caret / Remove Caret         | -            |     `⌥Click` |
| Add Caret Above                  | -            |        `⌥⌘↑` |
| Add Caret Below                  | -            |        `⌥⌘↓` |
| Move Caret Left                  | -            |          `←` |
| Move Caret Right                 | -            |          `→` |
| Move Caret Up                    | -            |          `↑` |
| Move Caret Down                  | -            |          `↓` |
| Move Caret to Previous Word      | -            |         `⌥←` |
| Move Caret to Next Word          | -            |         `⌥→` |
| Move Caret to Previous Word Part | -            |        `⌃⌥←` |
| Move Caret to Next Word Part     | -            |        `⌃⌥→` |
| Move Caret to Line Start         | -            |         `⌘←` |
| Move Caret to Line End           | -            |         `⌘→` |
| Move Caret to Document Start     | -            |         `⌘↑` |
| Move Caret to Document End       | -            |         `⌘↓` |
| Move Caret to Matching Brace     | -            |         `⌘\` |

### Editing

This category covers general editing operations.

| **Action**                | **Mnemonic** |   **Shortcut** |
|:--------------------------|:-------------|---------------:|
| Start Column Selection    | -            | `Middle-Click` |
| Shrink Selection          | `←`          |          `⇧⌥J` |
| Expand Selection          | `→`          |          `⇧⌥L` |
| Duplicate Selection       | `D`uplicate  |           `⌘D` |
| Fold                      | -            |           `⌘[` |
| Fold All                  | -            |          `⇧⌘[` |
| Unfold                    | -            |           `⌘]` |
| Unfold All                | -            |          `⇧⌘]` |
| Add Line Below            | -            |           `⌘⏎` |
| Add Line Above            | -            |          `⇧⌘⏎` |
| Copy Line Down            | -            |          `⇧⌥↓` |
| Copy Line Up              | -            |          `⇧⌥↑` |
| Move Line Down            | -            |           `⌥↓` |
| Move Line Up              | -            |           `⌥↑` |
| Delete Previous Character | -            |            `⌫` |
| Delete Next Character     | -            |           `⇧⌫` |
| Delete Previous Word      | -            |           `⌥⌫` |
| Delete Next Word          | -            |          `⇧⌥⌫` |
| Delete to Line Start      | -            |           `⌘⌫` |
| Delete to Line End        | -            |          `⇧⌘⌫` |

### Completion

This category covers editor completion and suggestion commands.

| **Action**         | **Mnemonic** | **Shortcut** |
|:-------------------|:-------------|-------------:|
| Trigger Completion | -            |     `⌃Space` |

## Complex Shortcuts

Complex shortcuts are grouped by command area and use **Super Key (`△`)** with two-key chords.

### Window (△W)

This category covers window-level commands.

| **Action**   | **Mnemonic** | **Shortcut** |
|:-------------|:-------------|-------------:|
| New Window   | `N`ew        |      `△W △N` |
| Close Window | `X`          |      `△W △X` |
| Zoom In      | `+`          |      `△W △=` |
| Zoom Out     | `-`          |      `△W △-` |
| Reset Zoom   | `0`          |      `△W △0` |
| Zen Mode     | `Z`en        |      `△W △Z` |

### File (△F)

This category covers file and folder commands.

| **Action**       | **Mnemonic** | **Shortcut** |
|:-----------------|:-------------|-------------:|
| New File         | `N`ew        |      `△F △N` |
| New Folder       | `D`irectory  |      `△F △D` |
| Open...          | `O`pen       |      `△F △O` |
| Open Recents     | `R`ecents    |      `△F △R` |
| Reveal in Finder | `F`inder     |      `△F △F` |

### View (△V)

This category covers view and panel management.

| **Action**           | **Mnemonic**    | **Shortcut** |
|:---------------------|:----------------|-------------:|
| Toggle Left Panel    | `←`             |      `△V △J` |
| Toggle Right Panel   | `→`             |      `△V △L` |
| Toggle Bottom Panel  | `↓`             |      `△V △K` |
| Focus Editor         | `E`ditor        |      `△V △E` |
| Focus Explorer       | `F`iles         |      `△V △F` |
| Focus Search         | `S`earch        |      `△V △S` |
| Focus Source Control | `V`ersion       |      `△V △V` |
| Focus Tests          | `U`nit          |      `△V △U` |
| Focus Run & Debug    | `D`ebug         |      `△V △D` |
| Focus TODOs          | `W`orklists     |      `△V △W` |
| Focus Extensions     | `A`dd-ons       |      `△V △A` |
| Focus Problems       | `P`roblems      |      `△V △P` |
| Focus Terminal       | `T`erminal      |      `△V △T` |
| Focus Debug Console  | `M`onitor       |      `△V △M` |
| Focus Output         | `O`utput        |      `△V △O` |
| Focus Chat           | `C`hat          |      `△V △C` |
| Focus Notifications  | `N`otifications |      `△V △N` |

### Navigation (△N)

This category covers navigation between views, locations, and related targets.

| **Action**                        | **Mnemonic**  | **Shortcut** |
|:----------------------------------|:--------------|-------------:|
| Navigate to View Left             | `←`           |      `△N △J` |
| Navigate to View Right            | `→`           |      `△N △L` |
| Navigate to View Above            | `↑`           |      `△N △I` |
| Navigate to View Below            | `↓`           |      `△N △K` |
| Navigate to Next Change           | `C`hange      |      `△N △C` |
| Navigate to Next Range            | `R`ange       |      `△N △R` |
| Navigate to Next Problem (Editor) | `P`roblem     |      `△N △P` |
| Navigate to Next Problem (Global) | `D`iagnostics |      `△N △D` |
| Navigate to Next Reference        | `U`sage       |      `△N △U` |

### Tab (△T)

This category covers tab management.

| **Action**        | **Mnemonic** | **Shortcut** |
|:------------------|:-------------|-------------:|
| New Tab           | `N`ew        |      `△T △N` |
| Previous Tab      | `←`          |      `△T △J` |
| Next Tab          | `→`          |      `△T △L` |
| Pin Tab           | `P`in        |      `△T △P` |
| Reopen Closed Tab | `R`eopen     |      `△T △R` |
| Close Tab         | `X`          |      `△T △X` |
| Close Other Tabs  | `I`solate    |      `△T △I` |

### Editor (△E)

This category covers editor-level controls.

| **Action**         | **Mnemonic** | **Shortcut** |
|:-------------------|:-------------|-------------:|
| Split Editor       | `S`plit      |      `△E △S` |
| Increase Font Size | `+`          |      `△E △=` |
| Decrease Font Size | `-`          |      `△E △-` |
| Reset Font Size    | `0`          |      `△E △0` |

### Palette (△P)

This category covers command palette entry points and scopes.

| **Action**        | **Mnemonic** | **Shortcut** |
|:------------------|:-------------|-------------:|
| All               | `A`ll        |      `△P △A` |
| Commands          | `R`un        |      `△P △R` |
| Agent Sessions    | `C`hats      |      `△P △C` |
| Search            | `Q`uery      |      `△P △Q` |
| Files             | `F`iles      |      `△P △F` |
| Go to Line:Column | `L`ine       |      `△P △L` |
| Symbols (Editor)  | `S`ymbols    |      `△P △S` |
| Symbols (Global)  | `G`lobals    |      `△P △G` |
| Editors           | `E`ditors    |      `△P △E` |
| Browsers          | `B`rowsers   |      `△P △B` |
| Debug Targets     | `D`ebug      |      `△P △D` |
| Debug Consoles    | `M`onitors   |      `△P △M` |
| Tasks             | `J`obs       |      `△P △J` |
| Terminals         | `T`erminals  |      `△P △T` |
| Views             | `V`iews      |      `△P △V` |

### Intelligence (△I)

This category covers AI-assisted editor workflows.

| **Action**         | **Mnemonic** | **Shortcut** |
|:-------------------|:-------------|-------------:|
| Open Quick Chat    | `Q`uick      |      `△I △Q` |
| Open Inline Chat   | `I`nline     |      `△I △I` |
| Explain            | `E`xplain    |      `△I △E` |
| Explain (Terminal) | `T`erminal   |      `△I △T` |
| Fix                | `F`ix        |      `△I △F` |

### Search (△S)

This category covers search and replace workflows.

| **Action**              | **Mnemonic** | **Shortcut** |
|:------------------------|:-------------|-------------:|
| Find (Editor)           | `F`ind       |      `△S △F` |
| Find (Global)           | `G`lobal     |      `△S △G` |
| Find In Editor (Global) | `E`ditor     |      `△S △E` |
| Replace (Editor)        | `R`eplace    |      `△S △R` |
| Replace (Global)        | `C`hange     |      `△S △C` |
| Find Previous           | `←`          |      `△S △J` |
| Find Next               | `→`          |      `△S △L` |
| Search in Selection     | `I`nside     |      `△S △I` |
| Select All Occurrences  | `A`ll        |      `△S △A` |
| Select Occurrence       | `S`elect     |      `△S △S` |
| Unselect Occurrence     | `U`nselect   |      `△S △U` |

### Mod (△M)

This category covers literal text modifications and editing transforms.

| **Action**                 | **Mnemonic**  | **Shortcut** |
|:---------------------------|:--------------|-------------:|
| Comment With Line Comment  | `L`ine        |      `△M △L` |
| Comment With Block Comment | `B`lock       |      `△M △B` |
| Transform to Uppercase     | `U`ppercase   |      `△M △U` |
| Transform to Lowercase     | `M`inuscule   |      `△M △M` |
| Transform to Title Case    | `T`itle       |      `△M △T` |
| Transform to Camel Case    | `C`amel       |      `△M △C` |
| Transform to Pascal Case   | `P`ascal      |      `△M △P` |
| Transform to Snake Case    | `S`nake       |      `△M △S` |
| Transform to Kebab Case    | `K`ebab       |      `△M △K` |
| Join Lines                 | `J`oin        |      `△M △J` |
| Reverse Lines              | `R`everse     |      `△M △R` |
| Sort Lines                 | `A`rrange     |      `△M △A` |
| Delete Duplicate Lines     | `D`eduplicate |      `△M △D` |

### Goto (△G)

This category covers code navigation targets.

| **Action**              | **Mnemonic**      | **Shortcut** |
|:------------------------|:------------------|-------------:|
| Go to Declaration       | `S`ignature       |      `△G △S` |
| Go to Definition        | `D`efinition      |      `△G △D` |
| Go to Definition Aside  | `A`side           |      `△G △A` |
| Go to Source Definition | `O`rigin          |      `△G △O` |
| Go to Type Definition   | `T`ype            |      `△G △T` |
| Go to Implementation(s) | `I`mplementations |      `△G △I` |
| Go to Reference(s)      | `R`eferences      |      `△G △R` |

### Observe (△O)

This category covers contextual inspection and preview views.

| **Action**             | **Mnemonic**      | **Shortcut** |
|:-----------------------|:------------------|-------------:|
| Show Hover             | `H`over           |      `△O △H` |
| Show Parameter Hints   | `P`arameter       |      `△O △P` |
| Increase Hover Detail  | `+`               |      `△O △=` |
| Decrease Hover Detail  | `-`               |      `△O △-` |
| Peek Declaration       | `S`ignature       |      `△O △S` |
| Peek Definition        | `D`efinition      |      `△O △D` |
| Peek Source Definition | `O`rigin          |      `△O △O` |
| Peek Type Definition   | `T`ype            |      `△O △T` |
| Peek Implementation(s) | `I`mplementations |      `△O △I` |
| Peek Reference(s)      | `R`eferences      |      `△O △R` |

### Hierarchy (△H)

This category covers hierarchical code exploration.

| **Action**          | **Mnemonic** | **Shortcut** |
|:--------------------|:-------------|-------------:|
| Show Call Hierarchy | `C`alls      |      `△H △C` |
| Show Incoming Calls | `I`ncoming   |      `△H △I` |
| Show Outgoing Calls | `O`utgoing   |      `△H △O` |
| Show Type Hierarchy | `T`ypes      |      `△H △T` |
| Show Subtypes       | `L`owers     |      `△H △L` |
| Show Supertypes     | `U`ppers     |      `△H △U` |
| Peek Call Hierarchy | `V`oicemail  |      `△H △V` |
| Peek Type Hierarchy | `F`amily     |      `△H △F` |

### Actions (△A)

This category covers semantic code actions and refactors provided by language tooling.

| **Action**                         | **Mnemonic** | **Shortcut** |
|:-----------------------------------|:-------------|-------------:|
| Show Code Actions Menu (Quick Fix) | `C`ode       |      `△A △C` |
| Show Refactor Menu                 | `R`efactor   |      `△A △R` |
| Rename                             | `N`ame       |      `△A △N` |
| Show Source Actions Menu           | `S`ource     |      `△A △S` |
| Format Document                    | `F`ormat     |      `△A △F` |
| Format Selection                   | `E`xcerpt    |      `△A △E` |

### Build (△B)

This category covers build-task commands.

| **Action**                   | **Mnemonic** | **Shortcut** |
|:-----------------------------|:-------------|-------------:|
| Run Build Task               | `B`uild      |      `△B △B` |
| Configure Default Build Task | `C`onfigure  |      `△B △C` |

### Debug (△D)

This category covers debugging session controls.

| **Action**                 | **Mnemonic** | **Shortcut** |
|:---------------------------|:-------------|-------------:|
| Start Debugging            | `D`ebug      |      `△D △D` |
| Start Without Debugging    | `R`un        |      `△D △R` |
| Pause Debugging            | `P`ause      |      `△D △P` |
| Resume Debugging           | `U`npause    |      `△D △U` |
| Restart Debugging          | `A`gain      |      `△D △A` |
| Stop Debugging             | `X`          |      `△D △X` |
| Step Over                  | `→`          |      `△D △L` |
| Step Into                  | `↓`          |      `△D △K` |
| Step Out                   | `↑`          |      `△D △I` |
| Run to Caret               | `C`aret      |      `△D △C` |
| Toggle Breakpoint          | `B`reakpoint |      `△D △B` |
| Add Conditional Breakpoint | `S`elective  |      `△D △S` |
| Add Logpoint               | `N`ote       |      `△D △N` |
| Edit Breakpoint            | `E`dit       |      `△D △E` |

## Using Mermaid Diagrams {-}

Mermaid diagrams can be used to create reasonable-looking diagrams. To do  
this, use the mermaid-cli to pre-process the markdown file, and  
then use pandoc to convert the markdown to the desired format. The command is:

```bash
mmdc -i input.md -o output.md
```
or call npx directly:

```bash
npx -p @mermaid-js/mermaid-cli mmdc -i input.md -o output.md
```
The build script takes the second approach

There's a few things to note here:

1.  the preprocessor will replace the mermaid code with a link to the diagram
    image \_in the `.tmp` directory
2.  the preprocessor will add a generic caption text to the image
3.  image sizing isn't considered; use pandoc to resize the image
4.  the preprocessor will output svg images by default. These seem to render
    incorrectly, so we'll use pngs instead

### Mermaid Examples

- Most charts allow a title to be set using `title <your title>`a notable
  exception is flowchart (graph).  Adding a title to a flowchart will cause
  mermaid-cli to raise an error
- we can add a description which will work seamlessly with
  `accDescr <your description here`
- font-awesome icons can be simply be added using this syntax:
  `::icon(fa fa-book)`
- override themes, styling and other low-level mermaid parameters using
  directives, e.g., `%%{init: { 'theme': 'forest' } }%% `

### Sequence Diagram

```mermaid
sequenceDiagram
title Example Sequence Diagram
accDescr: a sequence diagram
autonumber
Alice->>John: Hello John, how are you?
loop Healthcheck
    John->>John: Fight against hypochondria
end
Note right of John: Rational thoughts!
John-->>Alice: Great!
John->>Bob: How about you?
Bob-->>John: Jolly good!
```

### Pie Chart

```mermaid
%%{init: { 'theme': 'forest' } }%%
pie
title This Repo
accDescr: a pie chart
"Coding" : 10
"Debugging" : 90
```

### Flowchart

```mermaid
flowchart TB
accDescr: General logic
c1-->a2("🍎")
subgraph "concatenate_files"
    a1[collect files]
    a2[concatenate to .tmp dir]
    a1-->a2
end
subgraph  mermaidCLI
    b1[preprocess<br>concatenated<br>files]
    b2[overwrite<br>`.tmp` files]
    b3[rename<br>links]
    b1-->b2-->b3
end
subgraph Pandoc
    c1-->c2
end
```

### Git Graph

```mermaid
gitGraph:
commit "add examples"
branch feature/mermaid-examples
checkout feature/mermaid-examples
commit id:"a1b2c3d4"
commit tag:"mermaid"
checkout main
commit type: HIGHLIGHT
commit
merge feature/mermaid-examples
commit
branch feature/integrate-setup
commit
```

### mindmap

```mermaid
mindmap
  root)mindmap(
    Origins
      Long history
      ::icon(fa fa-book)
      Popularisation
        British popular psychology author Tony Buzan
    Research
      eff))On effectiveness<br/>and features((
      ac)On Automatic creation(
        us{{Uses}}
            Creative techniques
            Strategic planning
            Argument mapping
    Tools
      Pen and paper
      Mermaid
```

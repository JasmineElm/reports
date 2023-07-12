## Mermaid Examples

- Most charts allow a title to be set using `title <your title>`
- we can add a description which will work seamlessly with
  `accDescr <your description here`
- fontawesome icons can be simply be added using this syntax:
  `::icon(fa fa-book)`
- override themes, styling and other low-level mermaid parameters using
  directives, e.g., `%%{init: { 'theme': 'forest' } }%% `

### Sequence Diagram

``` mermaid
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

``` mermaid
%%{init: { 'theme': 'forest' } }%%
  pie 
    title This Repo
    accDescr: a pie chart
    "Coding" : 10
    "Debugging" : 90
```

### Flowchart

``` mermaid
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

``` mermaid
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

``` mermaid
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

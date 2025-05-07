#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

requirements:
- class: InitialWorkDirRequirement
  listing:
  - entryname: code/echo.py
    entry:
      $include: ../../code/echo.py

inputs:
- id: message
  type: string
  default: Hello World
  inputBinding:
    prefix: --message

outputs:
- id: out
  type: File
  outputBinding:
    glob: out.txt
stdout: out.txt

baseCommand:
- python
- code/echo.py

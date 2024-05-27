cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  aspergillosis-primary-care-terreu---primary:
    run: aspergillosis-primary-care-terreu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  aspergillosis-primary-care-bronchitis---primary:
    run: aspergillosis-primary-care-bronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-terreu---primary/output
  aspergillosis-primary-care-pneumonia---primary:
    run: aspergillosis-primary-care-pneumonia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-bronchitis---primary/output
  aspergillosis-primary-care-clavatus---primary:
    run: aspergillosis-primary-care-clavatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-pneumonia---primary/output
  aspergillosis-primary-care-antibody---primary:
    run: aspergillosis-primary-care-antibody---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-clavatus---primary/output
  aspergillosis-primary-care-fumigatus---primary:
    run: aspergillosis-primary-care-fumigatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-antibody---primary/output
  aspergillosis-primary-care-precipitin---primary:
    run: aspergillosis-primary-care-precipitin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-fumigatus---primary/output
  nucleic-aspergillosis-primary-care---primary:
    run: nucleic-aspergillosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-precipitin---primary/output
  aspergillosis-primary-care-niger---primary:
    run: aspergillosis-primary-care-niger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: nucleic-aspergillosis-primary-care---primary/output
  aspergillosis-primary-care-level---primary:
    run: aspergillosis-primary-care-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-niger---primary/output
  aspergillosis-primary-care-species---primary:
    run: aspergillosis-primary-care-species---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-level---primary/output
  aspergillosis-primary-care-galactomannan---primary:
    run: aspergillosis-primary-care-galactomannan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-species---primary/output
  aspergillosis-primary-care-antigen---primary:
    run: aspergillosis-primary-care-antigen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-galactomannan---primary/output
  aspergillosis-primary-care-serology---primary:
    run: aspergillosis-primary-care-serology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-antigen---primary/output
  aspergillosis-primary-care-fungus---primary:
    run: aspergillosis-primary-care-fungus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-serology---primary/output
  pulmonary-aspergillosis-primary-care---primary:
    run: pulmonary-aspergillosis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: aspergillosis-primary-care-fungus---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: pulmonary-aspergillosis-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

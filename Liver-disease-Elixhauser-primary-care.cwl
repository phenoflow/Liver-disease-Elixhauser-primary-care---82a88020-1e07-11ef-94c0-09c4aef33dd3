cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  liver-disease-elixhauser-primary-care-antigen---primary:
    run: liver-disease-elixhauser-primary-care-antigen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  liver-disease-elixhauser-primary-care-virus---primary:
    run: liver-disease-elixhauser-primary-care-virus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-antigen---primary/output
  positive-liver-disease-elixhauser-primary-care---primary:
    run: positive-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-virus---primary/output
  liver-disease-elixhauser-primary-care-carrier---primary:
    run: liver-disease-elixhauser-primary-care-carrier---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: positive-liver-disease-elixhauser-primary-care---primary/output
  viral-liver-disease-elixhauser-primary-care---primary:
    run: viral-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-carrier---primary/output
  liver-disease-elixhauser-primary-care-oesoph---primary:
    run: liver-disease-elixhauser-primary-care-oesoph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: viral-liver-disease-elixhauser-primary-care---primary/output
  hepatic-liver-disease-elixhauser-primary-care---primary:
    run: hepatic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-oesoph---primary/output
  liver-disease-elixhauser-primary-care-abscess---primary:
    run: liver-disease-elixhauser-primary-care-abscess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hepatic-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-cirrhosis---primary:
    run: liver-disease-elixhauser-primary-care-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-abscess---primary/output
  toxic-liver-disease-elixhauser-primary-care---primary:
    run: toxic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-cirrhosis---primary/output
  chronic-liver-disease-elixhauser-primary-care---primary:
    run: chronic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: toxic-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-transplant---primary:
    run: liver-disease-elixhauser-primary-care-transplant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-liver-disease-elixhauser-primary-care---primary/output
  acute-liver-disease-elixhauser-primary-care---primary:
    run: acute-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-transplant---primary/output
  liver-disease-elixhauser-primary-care-fibrosis---primary:
    run: liver-disease-elixhauser-primary-care-fibrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: acute-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-failure---primary:
    run: liver-disease-elixhauser-primary-care-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-fibrosis---primary/output
  liver-disease-elixhauser-primary-care-screening---primary:
    run: liver-disease-elixhauser-primary-care-screening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-failure---primary/output
  liver-disease-elixhauser-primary-care-sclerotherapy---primary:
    run: liver-disease-elixhauser-primary-care-sclerotherapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-screening---primary/output
  granulomatous-liver-disease-elixhauser-primary-care---primary:
    run: granulomatous-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-sclerotherapy---primary/output
  liver-disease-elixhauser-primary-care-admin---primary:
    run: liver-disease-elixhauser-primary-care-admin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: granulomatous-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-sequelae---primary:
    run: liver-disease-elixhauser-primary-care-sequelae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-admin---primary/output
  congenital-liver-disease-elixhauser-primary-care---primary:
    run: congenital-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-sequelae---primary/output
  liver-disease-elixhauser-primary-care-compensation---primary:
    run: liver-disease-elixhauser-primary-care-compensation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: congenital-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-history---primary:
    run: liver-disease-elixhauser-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-compensation---primary/output
  portal-liver-disease-elixhauser-primary-care---primary:
    run: portal-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-history---primary/output
  liver-disease-elixhauser-primary-care-hepatitis---primary:
    run: liver-disease-elixhauser-primary-care-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: portal-liver-disease-elixhauser-primary-care---primary/output
  lobular-liver-disease-elixhauser-primary-care---primary:
    run: lobular-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-hepatitis---primary/output
  liver-disease-elixhauser-primary-care-specified---primary:
    run: liver-disease-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lobular-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-sclerosing---primary:
    run: liver-disease-elixhauser-primary-care-sclerosing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-specified---primary/output
  endoscopic-liver-disease-elixhauser-primary-care---primary:
    run: endoscopic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-sclerosing---primary/output
  liver-disease-elixhauser-primary-care-detection---primary:
    run: liver-disease-elixhauser-primary-care-detection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: endoscopic-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-biliary---primary:
    run: liver-disease-elixhauser-primary-care-biliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-detection---primary/output
  liver-disease-elixhauser-primary-care-genotype---primary:
    run: liver-disease-elixhauser-primary-care-genotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-biliary---primary/output
  amoebic-liver-disease-elixhauser-primary-care---primary:
    run: amoebic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-genotype---primary/output
  persistent-liver-disease-elixhauser-primary-care---primary:
    run: persistent-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: amoebic-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care---primary:
    run: liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: persistent-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-complication---primary:
    run: liver-disease-elixhauser-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care---primary/output
  alcoholic-liver-disease-elixhauser-primary-care---primary:
    run: alcoholic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-complication---primary/output
  noninfective-liver-disease-elixhauser-primary-care---primary:
    run: noninfective-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: alcoholic-liver-disease-elixhauser-primary-care---primary/output
  deltaagent-liver-disease-elixhauser-primary-care---primary:
    run: deltaagent-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: noninfective-liver-disease-elixhauser-primary-care---primary/output
  secondary-liver-disease-elixhauser-primary-care---primary:
    run: secondary-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: deltaagent-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-banding---primary:
    run: liver-disease-elixhauser-primary-care-banding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: secondary-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-treatment---primary:
    run: liver-disease-elixhauser-primary-care-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-banding---primary/output
  cystic-liver-disease-elixhauser-primary-care---primary:
    run: cystic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-treatment---primary/output
  infectious-liver-disease-elixhauser-primary-care---primary:
    run: infectious-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cystic-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-cholangitis---primary:
    run: liver-disease-elixhauser-primary-care-cholangitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: infectious-liver-disease-elixhauser-primary-care---primary/output
  active-liver-disease-elixhauser-primary-care---primary:
    run: active-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-cholangitis---primary/output
  gonococcal-liver-disease-elixhauser-primary-care---primary:
    run: gonococcal-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: active-liver-disease-elixhauser-primary-care---primary/output
  liver---primary:
    run: liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: gonococcal-liver-disease-elixhauser-primary-care---primary/output
  hepatorenal-liver-disease-elixhauser-primary-care---primary:
    run: hepatorenal-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: liver---primary/output
  liver-disease-elixhauser-primary-care-mention---primary:
    run: liver-disease-elixhauser-primary-care-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: hepatorenal-liver-disease-elixhauser-primary-care---primary/output
  nucleic-liver-disease-elixhauser-primary-care---primary:
    run: nucleic-liver-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-mention---primary/output
  liver-disease-elixhauser-primary-care-autoimmune---primary:
    run: liver-disease-elixhauser-primary-care-autoimmune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: nucleic-liver-disease-elixhauser-primary-care---primary/output
  liver-disease-elixhauser-primary-care-causing---primary:
    run: liver-disease-elixhauser-primary-care-causing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-autoimmune---primary/output
  liver-disease-elixhauser-primary-care-jaundice---primary:
    run: liver-disease-elixhauser-primary-care-jaundice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-causing---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: liver-disease-elixhauser-primary-care-jaundice---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
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

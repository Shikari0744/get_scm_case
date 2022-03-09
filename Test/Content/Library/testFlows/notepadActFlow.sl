namespace: testFlows
flow:
  name: notepadActFlow
  workflow:
    - notepadAct:
        do:
          testFlows.notepadAct: []
        navigate:
          - SUCCESS:
              next_step: SUCCESS
              ROI: '10'
          - WARNING:
              next_step: SUCCESS
              ROI: '13'
          - FAILURE:
              next_step: FAILUREa
              ROI: '10'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      notepadAct:
        x: 154
        'y': 146.5
        navigate:
          e931e7da-bae4-4738-8e3b-520a9053f63e:
            targetId: 24bf22ea-ff01-ed49-93d1-fa1bd4c43de8
            port: FAILURE
          241a1b84-108e-e112-1316-43d82800ce1a:
            targetId: 99b13ddb-35e5-f01b-1e23-5ed2e91ada65
            port: SUCCESS
          aec5afd8-b957-41f4-12e9-e255e7bdcb4c:
            targetId: 99b13ddb-35e5-f01b-1e23-5ed2e91ada65
            port: WARNING
    results:
      FAILURE:
        24bf22ea-ff01-ed49-93d1-fa1bd4c43de8:
          x: 312
          'y': 287
      SUCCESS:
        99b13ddb-35e5-f01b-1e23-5ed2e91ada65:
          x: 376
          'y': 121

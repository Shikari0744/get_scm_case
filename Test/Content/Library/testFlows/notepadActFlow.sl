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
          - FAILURE: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      notepadAct:
        x: 154
        'y': 146.5
        navigate:
          aec5afd8-b957-41f4-12e9-e255e7bdcb4c:
            targetId: 99b13ddb-35e5-f01b-1e23-5ed2e91ada65
            port: WARNING
          241a1b84-108e-e112-1316-43d82800ce1a:
            targetId: 99b13ddb-35e5-f01b-1e23-5ed2e91ada65
            port: SUCCESS
          8bdf9791-d70c-ca6d-f9d5-ef602c9f8e67:
            targetId: 99b13ddb-35e5-f01b-1e23-5ed2e91ada65
            port: FAILURE
    results:
      SUCCESS:
        99b13ddb-35e5-f01b-1e23-5ed2e91ada65:
          x: 423
          'y': 118

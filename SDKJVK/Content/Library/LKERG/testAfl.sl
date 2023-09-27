namespace: LKERG
flow:
  name: testAfl
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '3'
            - value2: '10'
        navigate:
          - SUCCESS: testAflFlow
          - FAILURE: on_failure
    - testAflFlow:
        do:
          LKERG.testAflFlow: []
        navigate:
          - FAILURE: CUSTOM
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
    - CUSTOM
extensions:
  graph:
    steps:
      add_numbers:
        x: 180
        'y': 140
      testAflFlow:
        x: 400
        'y': 160
        navigate:
          16683506-8046-3f8b-2f5a-d6f3e0ccf171:
            targetId: a9a3d73c-b219-4bbf-771e-59982b218336
            port: SUCCESS
          551fcb91-e330-36e5-42ec-d08890340705:
            targetId: 4a4dad1e-702d-a959-f428-2423cd129536
            port: FAILURE
    results:
      SUCCESS:
        a9a3d73c-b219-4bbf-771e-59982b218336:
          x: 600
          'y': 160
      CUSTOM:
        4a4dad1e-702d-a959-f428-2423cd129536:
          x: 600
          'y': 320

namespace: LKERG_
flow:
  name: testAflFlow
  workflow:
    - testAfl_1:
        do:
          LKERG.testAfl: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: testAfl
          - CUSTOM: testAfl
    - testAflFlow:
        do:
          LKERG.testAflFlow: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
    - testAfl:
        do:
          LKERG_.testAfl: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: testAflFlow
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      testAflFlow:
        x: 360
        'y': 160
        navigate:
          2d033e85-2f91-c292-5767-5b93d5b26a99:
            targetId: 3582872a-0354-f013-b07a-1f48aa565dc9
            port: SUCCESS
      testAfl:
        x: 200
        'y': 160
      testAfl_1:
        x: 200
        'y': 400
    results:
      SUCCESS:
        3582872a-0354-f013-b07a-1f48aa565dc9:
          x: 560
          'y': 160

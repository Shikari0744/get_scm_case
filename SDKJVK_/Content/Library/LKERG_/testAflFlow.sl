namespace: LKERG_
flow:
  name: testAflFlow
  workflow:
    - testAflFlow:
        do:
          LKERG.testAflFlow: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
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
    results:
      SUCCESS:
        3582872a-0354-f013-b07a-1f48aa565dc9:
          x: 560
          'y': 160

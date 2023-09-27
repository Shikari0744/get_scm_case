namespace: LKERG_
flow:
  name: testAfl
  workflow:
    - testAfl:
        do:
          LKERG.testAfl: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
          - CUSTOM: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      testAfl:
        x: 360
        'y': 240
        navigate:
          60071f12-2257-24b8-af05-4cd5fec4c222:
            targetId: 9f9546cc-716c-376e-dbd7-18e03268a893
            port: SUCCESS
          1146a91c-5c05-40f4-447c-f3323c46eeb4:
            targetId: 9f9546cc-716c-376e-dbd7-18e03268a893
            port: CUSTOM
    results:
      SUCCESS:
        9f9546cc-716c-376e-dbd7-18e03268a893:
          x: 560
          'y': 120

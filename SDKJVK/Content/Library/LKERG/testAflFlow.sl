namespace: LKERG
flow:
  name: testAflFlow
  workflow:
    - random_number_generator_1:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '11'
            - max: '22'
        navigate:
          - SUCCESS: Random_Number_Generator
          - FAILURE: on_failure
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '3'
            - value2: '10'
        navigate:
          - SUCCESS: Generate_Random_Number
          - FAILURE: on_failure
    - Generate_Random_Number:
        do_external:
          06fe8531-868b-4e79-aa7a-13a5e30a66ec:
            - min: '1000'
            - max: '10000000'
        navigate:
          - success: add_numbers_1
          - failure: on_failure
    - Random_Number_Generator:
        do_external:
          2c22355a-9c26-4a9e-893c-01a35e4bb0e3:
            - max: '10'
            - min: '1'
        navigate:
          - success: add_numbers
          - failure: on_failure
    - add_numbers_1:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '11'
            - value2: '22'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      add_numbers:
        x: 160
        'y': 120
      Generate_Random_Number:
        x: 320
        'y': 160
      Random_Number_Generator:
        x: 200
        'y': 280
      random_number_generator_1:
        x: 440
        'y': 320
      add_numbers_1:
        x: 520
        'y': 80
        navigate:
          0db16a78-e841-e7a7-74cd-e51de103ccbc:
            targetId: c33ccfdf-4896-fcfc-7eb1-0622e9286a75
            port: SUCCESS
    results:
      SUCCESS:
        c33ccfdf-4896-fcfc-7eb1-0622e9286a75:
          x: 760
          'y': 240

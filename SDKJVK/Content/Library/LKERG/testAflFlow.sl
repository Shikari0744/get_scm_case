namespace: LKERG
flow:
  name: testAflFlow
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '1'
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
          - success: SUCCESS
          - failure: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Generate_Random_Number:
        x: 320
        'y': 160
        navigate:
          16b8dc04-bbe6-68e4-6bd5-5c50959c2133:
            targetId: c33ccfdf-4896-fcfc-7eb1-0622e9286a75
            port: success
      add_numbers:
        x: 160
        'y': 160
    results:
      SUCCESS:
        c33ccfdf-4896-fcfc-7eb1-0622e9286a75:
          x: 760
          'y': 240

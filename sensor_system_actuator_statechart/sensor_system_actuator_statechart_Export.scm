{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_system_actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\ninterface: \n    in event EV_LED_CAR0\n    in event EV_LED_CAR1\n    \n    \ninternal:    \n    var tick:integer\n    const DEL_BTN_MAX:integer = 5\n    "
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -169,
          "y": 343
        },
        "size": {
          "width": 79.21875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c256c28c-812a-4905-95fb-22b602cf354b",
        "z": 5,
        "embeds": [
          "5293db1a-5600-4bad-9495-bfc86c61529b"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_OFF"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "c256c28c-812a-4905-95fb-22b602cf354b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 38.009368896484375,
              "dy": 10,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "c256c28c-812a-4905-95fb-22b602cf354b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 14.009368896484375,
              "dy": 12,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_CAR0 [tick > 0] / tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5293db1a-5600-4bad-9495-bfc86c61529b",
        "z": 21,
        "parent": "c256c28c-812a-4905-95fb-22b602cf354b",
        "vertices": [
          {
            "x": -130.99,
            "y": 303
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 211,
          "y": 343
        },
        "size": {
          "width": 79.21875,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "49153d25-c020-4f65-bad0-3d10c9525433",
        "z": 28,
        "embeds": [
          "d9537ca6-6d47-4826-b68b-1a711da9936d"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_ON"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "49153d25-c020-4f65-bad0-3d10c9525433",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 68.00936889648438,
              "dy": 8,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "49153d25-c020-4f65-bad0-3d10c9525433",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44.009368896484375,
              "dy": 9,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_CAR1 [tick > 0] / tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d9537ca6-6d47-4826-b68b-1a711da9936d",
        "z": 29,
        "parent": "49153d25-c020-4f65-bad0-3d10c9525433",
        "vertices": [
          {
            "x": 255.01,
            "y": 307
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "49153d25-c020-4f65-bad0-3d10c9525433",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5.009368896484375,
              "dy": 33,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "c256c28c-812a-4905-95fb-22b602cf354b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 71.00936889648438,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_CAR1 [tick == 0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "788719ed-f65f-41fc-b3ae-c80434811543",
        "z": 31,
        "vertices": [
          {
            "x": 61,
            "y": 441
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c256c28c-812a-4905-95fb-22b602cf354b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 64.00936889648438,
              "dy": 7,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "49153d25-c020-4f65-bad0-3d10c9525433",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 16.009368896484375,
              "dy": 11,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_LED_CAR0 [tick <= 0] / tick = DEL_BTN_MAX"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1bbc4bdc-d184-4217-a784-c9825c8e6055",
        "z": 32,
        "vertices": [
          {
            "x": 97,
            "y": 310
          }
        ],
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -238,
          "y": 364
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "e96e49a7-55e9-4551-9055-e8d312c00257",
        "z": 33,
        "embeds": [
          "e3294807-5448-4a1d-9673-974e71817443"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -238,
          "y": 379
        },
        "id": "e3294807-5448-4a1d-9673-974e71817443",
        "z": 34,
        "parent": "e96e49a7-55e9-4551-9055-e8d312c00257",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "e96e49a7-55e9-4551-9055-e8d312c00257"
        },
        "target": {
          "id": "c256c28c-812a-4905-95fb-22b602cf354b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 18.009368896484375,
              "dy": 36,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "76bc7311-e3bc-42b4-9bca-9c7f1b13d04d",
        "z": 35,
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "SensorSystemActuatorStatechart",
          "statemachinePrefix": "sensorSystemActuatorStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}
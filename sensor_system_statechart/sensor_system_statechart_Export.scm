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
            "text": "sensor_system_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\ninterface:\n    in event EV_SYS_MAGN1\n    in event EV_SYS_MAGN0\n    in event EV_SYS_BTN_DOWN\n    in event EV_SYS_TICKET_GET\n    in event EV_SYS_LASER1\n    in event EV_SYS_LASER0\n    in event EV_SYS_BARRIER_TOP\n    in event EV_SYS_BARRIER_BOTTOM\n\ninternal:\n    event EV_LED_COUNT_CAR\n    event EV_LED_TICKET\n    event EV_LED_RISE_BARRIER\n    event EV_LED_FALL_BARRIER"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 151.99996948242188,
          "y": 242.00003051757812
        },
        "size": {
          "width": 151.2357940673828,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "658c8114-b285-46a1-9a6d-0edebbb41602",
        "z": 11,
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_RISING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -447,
          "y": 60
        },
        "size": {
          "width": 129.63067626953125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4b6f98a1-9c54-4ed4-bed9-2f8e057e1507",
        "z": 13,
        "attrs": {
          "name": {
            "text": "ST_SYS_CAR_PASSING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 253.99996948242188,
          "y": -199
        },
        "size": {
          "width": 79.22917175292969,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "cdb28bcd-3424-4a65-8081-382eee1aebb1",
        "z": 15,
        "attrs": {
          "name": {
            "text": "ST_SYS_CAR1"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -29.385427474975586,
          "y": -347
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
        "id": "9c3ee049-a5b1-466d-a0d6-beb5fae093ce",
        "z": 16,
        "embeds": [
          "3c83efdc-4161-4e4d-890e-4af0f11a2663"
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
          "x": -29.385427474975586,
          "y": -332
        },
        "id": "3c83efdc-4161-4e4d-890e-4af0f11a2663",
        "z": 17,
        "parent": "9c3ee049-a5b1-466d-a0d6-beb5fae093ce",
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
        "type": "State",
        "position": {
          "x": -256.0000305175781,
          "y": 242.00003051757812
        },
        "size": {
          "width": 122.4375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d554d280-bc83-4a91-b1ac-6f600d7446c0",
        "z": 24,
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_UP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "658c8114-b285-46a1-9a6d-0edebbb41602"
        },
        "target": {
          "id": "d554d280-bc83-4a91-b1ac-6f600d7446c0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 84.01876831054688,
              "dy": 34.66664123535156,
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
                "text": "EV_SYS_BARRIER_TOP"
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
        "id": "12454384-8148-4a03-9a02-ee1d2b7f4597",
        "z": 25,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d554d280-bc83-4a91-b1ac-6f600d7446c0"
        },
        "target": {
          "id": "4b6f98a1-9c54-4ed4-bed9-2f8e057e1507",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 43.012481689453125,
              "dy": 38.66666793823242,
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
                "text": "EV_SYS_LASER1"
              }
            },
            "position": {
              "distance": 0.6143521179787318,
              "offset": -1.7855548395287328,
              "angle": 0
            }
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
        "id": "e1766e73-4ca5-4518-beb5-0ff642d14a93",
        "z": 27,
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 381,
          "y": 60
        },
        "size": {
          "width": 129.63067626953125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a4637cc6-453d-407c-b26d-0bbbcce972bb",
        "z": 33,
        "attrs": {
          "name": {
            "text": "ST_SYS_TICKET"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "cdb28bcd-3424-4a65-8081-382eee1aebb1"
        },
        "target": {
          "id": "a4637cc6-453d-407c-b26d-0bbbcce972bb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 53.01251220703125,
              "dy": 45.66666793823242,
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
                "text": "EV_SYS_BTN_DOWN / raise EV_LED_TICKET"
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
        "id": "1128e26f-d36d-45c7-8dee-9d8c469d5fae",
        "z": 34,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4637cc6-453d-407c-b26d-0bbbcce972bb"
        },
        "target": {
          "id": "658c8114-b285-46a1-9a6d-0edebbb41602",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 98.01461791992188,
              "dy": 45.66664123535156,
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
                "text": "EV_SYS_TICKET_GET / raise EV_LED_RISE_BARRIER"
              }
            },
            "position": {
              "distance": 0.32885054573351863,
              "offset": -25.31304931640625,
              "angle": 0
            }
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
        "id": "6926a3a9-246c-480b-a46e-34e2e1c71d30",
        "z": 34,
        "vertices": [
          {
            "x": 487,
            "y": 244
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -378,
          "y": -214
        },
        "size": {
          "width": 158.4375,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "bbf2e4e2-20fc-463e-9b3e-dd7de79c4834",
        "z": 37,
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_FALLING"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "4b6f98a1-9c54-4ed4-bed9-2f8e057e1507"
        },
        "target": {
          "id": "bbf2e4e2-20fc-463e-9b3e-dd7de79c4834",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 13.018768310546875,
              "dy": 13.666671752929688,
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
                "text": "EV_SYS_LASER0 / raise EV_LED_FALL_BARRIER"
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
        "id": "75283465-4e99-4d99-96d0-d39fea3039ca",
        "z": 38,
        "vertices": [
          {
            "x": -400,
            "y": -76
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d554d280-bc83-4a91-b1ac-6f600d7446c0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 62.018768310546875,
              "dy": 23.666641235351562,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "bbf2e4e2-20fc-463e-9b3e-dd7de79c4834",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 79.01876831054688,
              "dy": 28.666671752929688,
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
                "text": "EV_SYS_MAGN0 / raise EV_LED_FALL_BARRIER"
              }
            },
            "position": {
              "distance": 0.6772062615374306,
              "offset": 12.994962098645182,
              "angle": 0
            }
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
        "id": "312a1e45-e1cf-433b-a483-67d992ac5865",
        "z": 38,
        "vertices": [
          {
            "x": -221,
            "y": 188
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 72.77079772949219,
          "y": -297
        },
        "size": {
          "width": 79.22917175292969,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4231830b-1c5c-4f8b-a749-60b97efdab33",
        "z": 39,
        "attrs": {
          "name": {
            "text": "ST_SYS_CAR0"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "658c8114-b285-46a1-9a6d-0edebbb41602"
        },
        "target": {
          "id": "4231830b-1c5c-4f8b-a749-60b97efdab33",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 23.009361267089844,
              "dy": 59,
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
                "text": "EV_SYS_MAGN0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
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
        "id": "b452a1f2-86c1-4a81-a99d-8472c302666a",
        "z": 40,
        "vertices": [
          {
            "x": -35.99000000000001,
            "y": 193
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bbf2e4e2-20fc-463e-9b3e-dd7de79c4834"
        },
        "target": {
          "id": "4231830b-1c5c-4f8b-a749-60b97efdab33",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 27.014572143554688,
              "dy": 29.666656494140625,
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
                "text": "EV_SYS_BARRIER_BOTTOM / raise EV_LED_COUNT_CAR"
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
        "id": "0bbe6c1e-1835-4808-8bea-81294544a0dc",
        "z": 40,
        "vertices": [
          {
            "x": -190,
            "y": -252.33
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4637cc6-453d-407c-b26d-0bbbcce972bb"
        },
        "target": {
          "id": "4231830b-1c5c-4f8b-a749-60b97efdab33",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 15.014572143554688,
              "dy": 55.666656494140625,
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
                "text": "EV_SYS_MAGN0"
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
        "id": "554c6f35-5a0e-4dd0-b23c-da29217eb94c",
        "z": 40,
        "vertices": [
          {
            "x": 94,
            "y": -30
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cdb28bcd-3424-4a65-8081-382eee1aebb1"
        },
        "target": {
          "id": "4231830b-1c5c-4f8b-a749-60b97efdab33",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 39.01457214355469,
              "dy": 33.666656494140625,
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
                "text": "EV_SYS_MAGN0"
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
        "id": "2bd72417-60a9-4f93-8bcf-b44b50d10ee3",
        "z": 40,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9c3ee049-a5b1-466d-a0d6-beb5fae093ce"
        },
        "target": {
          "id": "4231830b-1c5c-4f8b-a749-60b97efdab33",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 44.01457214355469,
              "dy": 17.666656494140625,
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
        "id": "389faab1-b5cf-47d5-b62b-1d4f8d5b37c9",
        "z": 40,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "4231830b-1c5c-4f8b-a749-60b97efdab33"
        },
        "target": {
          "id": "cdb28bcd-3424-4a65-8081-382eee1aebb1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 40.014617919921875,
              "dy": 50.66667175292969,
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
                "text": "EV_SYS_MAGN1"
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
        "id": "f3514e24-3ff6-4a1a-84ab-068a90c157af",
        "z": 40,
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
          "moduleName": "SensorSystemStatechart",
          "statemachinePrefix": "sensorSystemStatechart",
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
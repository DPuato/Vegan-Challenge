{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "o_enemy_hamburger",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_entity","path":"objects/o_entity/o_entity.yy",},"propertyId":{"name":"state","path":"objects/o_entity/o_entity.yy",},"value":"es.SETAL",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_entity","path":"objects/o_entity/o_entity.yy",},"propertyId":{"name":"spr_idle","path":"objects/o_entity/o_entity.yy",},"value":"hamburger_enemy_idle",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_entity","path":"objects/o_entity/o_entity.yy",},"propertyId":{"name":"spr_setal","path":"objects/o_entity/o_entity.yy",},"value":"hamburger_enemy_setal",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"o_entity","path":"objects/o_entity/o_entity.yy",},"propertyId":{"name":"spr_dead","path":"objects/o_entity/o_entity.yy",},"value":"hamburger_enemy_dead",},
  ],
  "parent": {
    "name": "OV",
    "path": "folders/Objects/OV.yy",
  },
  "parentObjectId": {
    "name": "o_entity",
    "path": "objects/o_entity/o_entity.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"spr_rogy","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"hamburger_enemy_rogy","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"setal_spd","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"2.2","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"ugras_spd","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"9","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hp1_max","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"2","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hp1","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"hp1_max","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"fall_sound_played","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"false","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "hamburger_enemy_idle",
    "path": "sprites/hamburger_enemy_idle/hamburger_enemy_idle.yy",
  },
  "spriteMaskId": {
    "name": "hamburger_enemy_idle",
    "path": "sprites/hamburger_enemy_idle/hamburger_enemy_idle.yy",
  },
  "visible": true,
}
// Auto-generated. Do not edit!

// (in-package jetauto_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_value = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_value')) {
        this.joint_value = initObj.joint_value
      }
      else {
        this.joint_value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointValueRequest
    // Serialize message field [joint_value]
    bufferOffset = _arraySerializer.float32(obj.joint_value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointValueRequest
    let len;
    let data = new SetJointValueRequest(null);
    // Deserialize message field [joint_value]
    data.joint_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_value.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetauto_interfaces/SetJointValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97ed8712ead473224aec3bee8e7849e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointValueRequest(null);
    if (msg.joint_value !== undefined) {
      resolved.joint_value = msg.joint_value;
    }
    else {
      resolved.joint_value = []
    }

    return resolved;
    }
};

class SetJointValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.position = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointValueResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointValueResponse
    let len;
    let data = new SetJointValueResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.position.length;
    length += 4 * object.orientation.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetauto_interfaces/SetJointValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15f95f5538fad94dd79708adc832f5c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float32[] position
    float32[] orientation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointValueResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointValueRequest,
  Response: SetJointValueResponse,
  md5sum() { return 'f30e2e31fba61d3992775965b6a52966'; },
  datatype() { return 'jetauto_interfaces/SetJointValue'; }
};

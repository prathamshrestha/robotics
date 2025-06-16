// Auto-generated. Do not edit!

// (in-package hiwonder_servo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetReadTimeoutRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.times = null;
    }
    else {
      if (initObj.hasOwnProperty('times')) {
        this.times = initObj.times
      }
      else {
        this.times = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetReadTimeoutRequest
    // Serialize message field [times]
    bufferOffset = _serializer.uint8(obj.times, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetReadTimeoutRequest
    let len;
    let data = new SetReadTimeoutRequest(null);
    // Deserialize message field [times]
    data.times = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_servo_msgs/SetReadTimeoutRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bb367c5d3cf2a006464e171a8a8e45b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 times
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetReadTimeoutRequest(null);
    if (msg.times !== undefined) {
      resolved.times = msg.times;
    }
    else {
      resolved.times = 0
    }

    return resolved;
    }
};

class SetReadTimeoutResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetReadTimeoutResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetReadTimeoutResponse
    let len;
    let data = new SetReadTimeoutResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_servo_msgs/SetReadTimeoutResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c4b99d3c45e94cd751d81f8afc890bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetReadTimeoutResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetReadTimeoutRequest,
  Response: SetReadTimeoutResponse,
  md5sum() { return '31983b951d3513aec7b12b0efe326e35'; },
  datatype() { return 'hiwonder_servo_msgs/SetReadTimeout'; }
};

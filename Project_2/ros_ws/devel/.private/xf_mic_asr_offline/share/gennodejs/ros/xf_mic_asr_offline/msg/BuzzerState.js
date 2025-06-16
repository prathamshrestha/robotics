// Auto-generated. Do not edit!

// (in-package xf_mic_asr_offline.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BuzzerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.freq = null;
      this.on_time = null;
      this.off_time = null;
      this.repeat = null;
    }
    else {
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0;
      }
      if (initObj.hasOwnProperty('on_time')) {
        this.on_time = initObj.on_time
      }
      else {
        this.on_time = 0.0;
      }
      if (initObj.hasOwnProperty('off_time')) {
        this.off_time = initObj.off_time
      }
      else {
        this.off_time = 0.0;
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuzzerState
    // Serialize message field [freq]
    bufferOffset = _serializer.uint16(obj.freq, buffer, bufferOffset);
    // Serialize message field [on_time]
    bufferOffset = _serializer.float32(obj.on_time, buffer, bufferOffset);
    // Serialize message field [off_time]
    bufferOffset = _serializer.float32(obj.off_time, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.uint16(obj.repeat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuzzerState
    let len;
    let data = new BuzzerState(null);
    // Deserialize message field [freq]
    data.freq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [on_time]
    data.on_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [off_time]
    data.off_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xf_mic_asr_offline/BuzzerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf6a6f6f285012bcc0e11a4dd35a61af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 freq
    float32 on_time
    float32 off_time
    uint16 repeat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BuzzerState(null);
    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0
    }

    if (msg.on_time !== undefined) {
      resolved.on_time = msg.on_time;
    }
    else {
      resolved.on_time = 0.0
    }

    if (msg.off_time !== undefined) {
      resolved.off_time = msg.off_time;
    }
    else {
      resolved.off_time = 0.0
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = msg.repeat;
    }
    else {
      resolved.repeat = 0
    }

    return resolved;
    }
};

module.exports = BuzzerState;

// Auto-generated. Do not edit!

// (in-package jetauto_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LineROI = require('../msg/LineROI.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLineROIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new LineROI();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLineROIRequest
    // Serialize message field [data]
    bufferOffset = LineROI.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLineROIRequest
    let len;
    let data = new SetLineROIRequest(null);
    // Deserialize message field [data]
    data.data = LineROI.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetauto_interfaces/SetLineROIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2d94ea1712440788e5286834c2903c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    jetauto_interfaces/LineROI data
    
    ================================================================================
    MSG: jetauto_interfaces/LineROI
    jetauto_interfaces/ROI roi_up
    jetauto_interfaces/ROI roi_center
    jetauto_interfaces/ROI roi_down
    
    ================================================================================
    MSG: jetauto_interfaces/ROI
    int16 y_min
    int16 y_max
    int16 x_min
    int16 x_max
    float32 scale
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLineROIRequest(null);
    if (msg.data !== undefined) {
      resolved.data = LineROI.Resolve(msg.data)
    }
    else {
      resolved.data = new LineROI()
    }

    return resolved;
    }
};

class SetLineROIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLineROIResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLineROIResponse
    let len;
    let data = new SetLineROIResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetauto_interfaces/SetLineROIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLineROIResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetLineROIRequest,
  Response: SetLineROIResponse,
  md5sum() { return '35e53feacfaccfdf6f9964472d9f693d'; },
  datatype() { return 'jetauto_interfaces/SetLineROI'; }
};

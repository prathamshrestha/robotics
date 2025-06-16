// Auto-generated. Do not edit!

// (in-package jetauto_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ROI = require('./ROI.js');

//-----------------------------------------------------------

class LineROI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roi_up = null;
      this.roi_center = null;
      this.roi_down = null;
    }
    else {
      if (initObj.hasOwnProperty('roi_up')) {
        this.roi_up = initObj.roi_up
      }
      else {
        this.roi_up = new ROI();
      }
      if (initObj.hasOwnProperty('roi_center')) {
        this.roi_center = initObj.roi_center
      }
      else {
        this.roi_center = new ROI();
      }
      if (initObj.hasOwnProperty('roi_down')) {
        this.roi_down = initObj.roi_down
      }
      else {
        this.roi_down = new ROI();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineROI
    // Serialize message field [roi_up]
    bufferOffset = ROI.serialize(obj.roi_up, buffer, bufferOffset);
    // Serialize message field [roi_center]
    bufferOffset = ROI.serialize(obj.roi_center, buffer, bufferOffset);
    // Serialize message field [roi_down]
    bufferOffset = ROI.serialize(obj.roi_down, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineROI
    let len;
    let data = new LineROI(null);
    // Deserialize message field [roi_up]
    data.roi_up = ROI.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi_center]
    data.roi_center = ROI.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi_down]
    data.roi_down = ROI.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetauto_interfaces/LineROI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b196228fae7ce5d6afb589f8af99c676';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LineROI(null);
    if (msg.roi_up !== undefined) {
      resolved.roi_up = ROI.Resolve(msg.roi_up)
    }
    else {
      resolved.roi_up = new ROI()
    }

    if (msg.roi_center !== undefined) {
      resolved.roi_center = ROI.Resolve(msg.roi_center)
    }
    else {
      resolved.roi_center = new ROI()
    }

    if (msg.roi_down !== undefined) {
      resolved.roi_down = ROI.Resolve(msg.roi_down)
    }
    else {
      resolved.roi_down = new ROI()
    }

    return resolved;
    }
};

module.exports = LineROI;

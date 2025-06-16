// Auto-generated. Do not edit!

// (in-package jetauto_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ColorDetect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color_name = null;
      this.detect_type = null;
    }
    else {
      if (initObj.hasOwnProperty('color_name')) {
        this.color_name = initObj.color_name
      }
      else {
        this.color_name = '';
      }
      if (initObj.hasOwnProperty('detect_type')) {
        this.detect_type = initObj.detect_type
      }
      else {
        this.detect_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorDetect
    // Serialize message field [color_name]
    bufferOffset = _serializer.string(obj.color_name, buffer, bufferOffset);
    // Serialize message field [detect_type]
    bufferOffset = _serializer.string(obj.detect_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorDetect
    let len;
    let data = new ColorDetect(null);
    // Deserialize message field [color_name]
    data.color_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detect_type]
    data.detect_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color_name.length;
    length += object.detect_type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetauto_interfaces/ColorDetect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e4e09872769a19519f9568bfbc9dbd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color_name
    string detect_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorDetect(null);
    if (msg.color_name !== undefined) {
      resolved.color_name = msg.color_name;
    }
    else {
      resolved.color_name = ''
    }

    if (msg.detect_type !== undefined) {
      resolved.detect_type = msg.detect_type;
    }
    else {
      resolved.detect_type = ''
    }

    return resolved;
    }
};

module.exports = ColorDetect;

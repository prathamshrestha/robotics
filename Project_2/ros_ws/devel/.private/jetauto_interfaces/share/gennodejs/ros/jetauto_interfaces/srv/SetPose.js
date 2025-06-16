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

class SetPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
      this.tolerance = null;
      this.resolution = null;
    }
    else {
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
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = [];
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPoseRequest
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, null);
    // Serialize message field [tolerance]
    bufferOffset = _arraySerializer.float32(obj.tolerance, buffer, bufferOffset, null);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float32(obj.resolution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPoseRequest
    let len;
    let data = new SetPoseRequest(null);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tolerance]
    data.tolerance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.position.length;
    length += 4 * object.orientation.length;
    length += 4 * object.tolerance.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetauto_interfaces/SetPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8627915f2b86c07c590c6fe745292a5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] position
    float32[] orientation
    float32[] tolerance
    float32 resolution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPoseRequest(null);
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

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = []
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    return resolved;
    }
};

class SetPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.pulse = null;
      this.min_variation = null;
      this.current_pulse = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('pulse')) {
        this.pulse = initObj.pulse
      }
      else {
        this.pulse = [];
      }
      if (initObj.hasOwnProperty('min_variation')) {
        this.min_variation = initObj.min_variation
      }
      else {
        this.min_variation = 0;
      }
      if (initObj.hasOwnProperty('current_pulse')) {
        this.current_pulse = initObj.current_pulse
      }
      else {
        this.current_pulse = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPoseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [pulse]
    bufferOffset = _arraySerializer.float32(obj.pulse, buffer, bufferOffset, null);
    // Serialize message field [min_variation]
    bufferOffset = _serializer.uint32(obj.min_variation, buffer, bufferOffset);
    // Serialize message field [current_pulse]
    bufferOffset = _arraySerializer.float32(obj.current_pulse, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPoseResponse
    let len;
    let data = new SetPoseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pulse]
    data.pulse = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [min_variation]
    data.min_variation = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [current_pulse]
    data.current_pulse = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pulse.length;
    length += 4 * object.current_pulse.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jetauto_interfaces/SetPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'caf1f9deb5c044797acc59cdbedd492f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float32[] pulse
    uint32 min_variation
    float32[] current_pulse
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPoseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.pulse !== undefined) {
      resolved.pulse = msg.pulse;
    }
    else {
      resolved.pulse = []
    }

    if (msg.min_variation !== undefined) {
      resolved.min_variation = msg.min_variation;
    }
    else {
      resolved.min_variation = 0
    }

    if (msg.current_pulse !== undefined) {
      resolved.current_pulse = msg.current_pulse;
    }
    else {
      resolved.current_pulse = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SetPoseRequest,
  Response: SetPoseResponse,
  md5sum() { return 'aa945394df579f83610f305a314044bd'; },
  datatype() { return 'jetauto_interfaces/SetPose'; }
};

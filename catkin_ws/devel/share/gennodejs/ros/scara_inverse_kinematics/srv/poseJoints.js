// Auto-generated. Do not edit!

// (in-package scara_inverse_kinematics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class poseJointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r11 = null;
      this.r12 = null;
      this.r13 = null;
      this.r21 = null;
      this.r22 = null;
      this.r23 = null;
      this.r31 = null;
      this.r32 = null;
      this.r33 = null;
      this.x = null;
      this.y = null;
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('r11')) {
        this.r11 = initObj.r11
      }
      else {
        this.r11 = 0.0;
      }
      if (initObj.hasOwnProperty('r12')) {
        this.r12 = initObj.r12
      }
      else {
        this.r12 = 0.0;
      }
      if (initObj.hasOwnProperty('r13')) {
        this.r13 = initObj.r13
      }
      else {
        this.r13 = 0.0;
      }
      if (initObj.hasOwnProperty('r21')) {
        this.r21 = initObj.r21
      }
      else {
        this.r21 = 0.0;
      }
      if (initObj.hasOwnProperty('r22')) {
        this.r22 = initObj.r22
      }
      else {
        this.r22 = 0.0;
      }
      if (initObj.hasOwnProperty('r23')) {
        this.r23 = initObj.r23
      }
      else {
        this.r23 = 0.0;
      }
      if (initObj.hasOwnProperty('r31')) {
        this.r31 = initObj.r31
      }
      else {
        this.r31 = 0.0;
      }
      if (initObj.hasOwnProperty('r32')) {
        this.r32 = initObj.r32
      }
      else {
        this.r32 = 0.0;
      }
      if (initObj.hasOwnProperty('r33')) {
        this.r33 = initObj.r33
      }
      else {
        this.r33 = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poseJointsRequest
    // Serialize message field [r11]
    bufferOffset = _serializer.float64(obj.r11, buffer, bufferOffset);
    // Serialize message field [r12]
    bufferOffset = _serializer.float64(obj.r12, buffer, bufferOffset);
    // Serialize message field [r13]
    bufferOffset = _serializer.float64(obj.r13, buffer, bufferOffset);
    // Serialize message field [r21]
    bufferOffset = _serializer.float64(obj.r21, buffer, bufferOffset);
    // Serialize message field [r22]
    bufferOffset = _serializer.float64(obj.r22, buffer, bufferOffset);
    // Serialize message field [r23]
    bufferOffset = _serializer.float64(obj.r23, buffer, bufferOffset);
    // Serialize message field [r31]
    bufferOffset = _serializer.float64(obj.r31, buffer, bufferOffset);
    // Serialize message field [r32]
    bufferOffset = _serializer.float64(obj.r32, buffer, bufferOffset);
    // Serialize message field [r33]
    bufferOffset = _serializer.float64(obj.r33, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poseJointsRequest
    let len;
    let data = new poseJointsRequest(null);
    // Deserialize message field [r11]
    data.r11 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r12]
    data.r12 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r13]
    data.r13 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r21]
    data.r21 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r22]
    data.r22 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r23]
    data.r23 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r31]
    data.r31 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r32]
    data.r32 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r33]
    data.r33 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_inverse_kinematics/poseJointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70a12bf1f2d02af123ce0de58d137cf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 r11
    float64 r12
    float64 r13
    float64 r21
    float64 r22
    float64 r23
    float64 r31
    float64 r32
    float64 r33
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poseJointsRequest(null);
    if (msg.r11 !== undefined) {
      resolved.r11 = msg.r11;
    }
    else {
      resolved.r11 = 0.0
    }

    if (msg.r12 !== undefined) {
      resolved.r12 = msg.r12;
    }
    else {
      resolved.r12 = 0.0
    }

    if (msg.r13 !== undefined) {
      resolved.r13 = msg.r13;
    }
    else {
      resolved.r13 = 0.0
    }

    if (msg.r21 !== undefined) {
      resolved.r21 = msg.r21;
    }
    else {
      resolved.r21 = 0.0
    }

    if (msg.r22 !== undefined) {
      resolved.r22 = msg.r22;
    }
    else {
      resolved.r22 = 0.0
    }

    if (msg.r23 !== undefined) {
      resolved.r23 = msg.r23;
    }
    else {
      resolved.r23 = 0.0
    }

    if (msg.r31 !== undefined) {
      resolved.r31 = msg.r31;
    }
    else {
      resolved.r31 = 0.0
    }

    if (msg.r32 !== undefined) {
      resolved.r32 = msg.r32;
    }
    else {
      resolved.r32 = 0.0
    }

    if (msg.r33 !== undefined) {
      resolved.r33 = msg.r33;
    }
    else {
      resolved.r33 = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    return resolved;
    }
};

class poseJointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta1 = null;
      this.theta2 = null;
      this.d3 = null;
    }
    else {
      if (initObj.hasOwnProperty('theta1')) {
        this.theta1 = initObj.theta1
      }
      else {
        this.theta1 = 0.0;
      }
      if (initObj.hasOwnProperty('theta2')) {
        this.theta2 = initObj.theta2
      }
      else {
        this.theta2 = 0.0;
      }
      if (initObj.hasOwnProperty('d3')) {
        this.d3 = initObj.d3
      }
      else {
        this.d3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poseJointsResponse
    // Serialize message field [theta1]
    bufferOffset = _serializer.float64(obj.theta1, buffer, bufferOffset);
    // Serialize message field [theta2]
    bufferOffset = _serializer.float64(obj.theta2, buffer, bufferOffset);
    // Serialize message field [d3]
    bufferOffset = _serializer.float64(obj.d3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poseJointsResponse
    let len;
    let data = new poseJointsResponse(null);
    // Deserialize message field [theta1]
    data.theta1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta2]
    data.theta2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d3]
    data.d3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_inverse_kinematics/poseJointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9890b1bf53393af30e276affd5468a4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 theta1
    float64 theta2
    float64 d3
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poseJointsResponse(null);
    if (msg.theta1 !== undefined) {
      resolved.theta1 = msg.theta1;
    }
    else {
      resolved.theta1 = 0.0
    }

    if (msg.theta2 !== undefined) {
      resolved.theta2 = msg.theta2;
    }
    else {
      resolved.theta2 = 0.0
    }

    if (msg.d3 !== undefined) {
      resolved.d3 = msg.d3;
    }
    else {
      resolved.d3 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: poseJointsRequest,
  Response: poseJointsResponse,
  md5sum() { return '998f1ed04f61522c2efafb2090670f73'; },
  datatype() { return 'scara_inverse_kinematics/poseJoints'; }
};

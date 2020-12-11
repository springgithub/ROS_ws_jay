; Auto-generated. Do not edit!


(cl:in-package myx-msg)


;//! \htmlinclude IoTSensor.msg.html

(cl:defclass <IoTSensor> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0)
   (humitidy
    :reader humitidy
    :initarg :humitidy
    :type cl:float
    :initform 0.0))
)

(cl:defclass IoTSensor (<IoTSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IoTSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IoTSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myx-msg:<IoTSensor> is deprecated: use myx-msg:IoTSensor instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myx-msg:id-val is deprecated.  Use myx-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myx-msg:name-val is deprecated.  Use myx-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myx-msg:temp-val is deprecated.  Use myx-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'humitidy-val :lambda-list '(m))
(cl:defmethod humitidy-val ((m <IoTSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myx-msg:humitidy-val is deprecated.  Use myx-msg:humitidy instead.")
  (humitidy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IoTSensor>) ostream)
  "Serializes a message object of type '<IoTSensor>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'humitidy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IoTSensor>) istream)
  "Deserializes a message object of type '<IoTSensor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humitidy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IoTSensor>)))
  "Returns string type for a message object of type '<IoTSensor>"
  "myx/IoTSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IoTSensor)))
  "Returns string type for a message object of type 'IoTSensor"
  "myx/IoTSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IoTSensor>)))
  "Returns md5sum for a message object of type '<IoTSensor>"
  "cd6a2d931f3e08a1ac57aead0de6b077")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IoTSensor)))
  "Returns md5sum for a message object of type 'IoTSensor"
  "cd6a2d931f3e08a1ac57aead0de6b077")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IoTSensor>)))
  "Returns full string definition for message of type '<IoTSensor>"
  (cl:format cl:nil "int32 id~%string name~%float32 temp~%float32 humitidy~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IoTSensor)))
  "Returns full string definition for message of type 'IoTSensor"
  (cl:format cl:nil "int32 id~%string name~%float32 temp~%float32 humitidy~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IoTSensor>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IoTSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'IoTSensor
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':temp (temp msg))
    (cl:cons ':humitidy (humitidy msg))
))

;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Fun_xyz)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Fun_xyz (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::FUN_XYZ")
  (make-package "BEGINNER_TUTORIALS::FUN_XYZ"))
(unless (find-package "BEGINNER_TUTORIALS::FUN_XYZREQUEST")
  (make-package "BEGINNER_TUTORIALS::FUN_XYZREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::FUN_XYZRESPONSE")
  (make-package "BEGINNER_TUTORIALS::FUN_XYZRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::Fun_xyzRequest
  :super ros::object
  :slots (_a _b _c ))

(defmethod beginner_tutorials::Fun_xyzRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    ((:c __c) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   (setq _c (round __c))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ;; int64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;; int64 _c
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _c (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _c) (= (length (_c . bv)) 2)) ;; bignum
              (write-long (ash (elt (_c . bv) 0) 0) s)
              (write-long (ash (elt (_c . bv) 1) -1) s))
             ((and (class _c) (= (length (_c . bv)) 1)) ;; big1
              (write-long (elt (_c . bv) 0) s)
              (write-long (if (>= _c 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _c s)(write-long (if (>= _c 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _c
#+(or :alpha :irix6 :x86_64)
      (setf _c (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _c (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::Fun_xyzResponse
  :super ros::object
  :slots (_s ))

(defmethod beginner_tutorials::Fun_xyzResponse
  (:init
   (&key
    ((:s __s) 0)
    )
   (send-super :init)
   (setq _s (round __s))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; int64 _s
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _s
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _s (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _s) (= (length (_s . bv)) 2)) ;; bignum
              (write-long (ash (elt (_s . bv) 0) 0) s)
              (write-long (ash (elt (_s . bv) 1) -1) s))
             ((and (class _s) (= (length (_s . bv)) 1)) ;; big1
              (write-long (elt (_s . bv) 0) s)
              (write-long (if (>= _s 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _s s)(write-long (if (>= _s 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _s
#+(or :alpha :irix6 :x86_64)
      (setf _s (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _s (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::Fun_xyz
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::Fun_xyz :md5sum-) "eaeadefa75cc1dc5d7db7aada9ebc9b2")
(setf (get beginner_tutorials::Fun_xyz :datatype-) "beginner_tutorials/Fun_xyz")
(setf (get beginner_tutorials::Fun_xyz :request) beginner_tutorials::Fun_xyzRequest)
(setf (get beginner_tutorials::Fun_xyz :response) beginner_tutorials::Fun_xyzResponse)

(defmethod beginner_tutorials::Fun_xyzRequest
  (:response () (instance beginner_tutorials::Fun_xyzResponse :init)))

(setf (get beginner_tutorials::Fun_xyzRequest :md5sum-) "eaeadefa75cc1dc5d7db7aada9ebc9b2")
(setf (get beginner_tutorials::Fun_xyzRequest :datatype-) "beginner_tutorials/Fun_xyzRequest")
(setf (get beginner_tutorials::Fun_xyzRequest :definition-)
      "int64 a
int64 b
int64 c
---
int64 s

")

(setf (get beginner_tutorials::Fun_xyzResponse :md5sum-) "eaeadefa75cc1dc5d7db7aada9ebc9b2")
(setf (get beginner_tutorials::Fun_xyzResponse :datatype-) "beginner_tutorials/Fun_xyzResponse")
(setf (get beginner_tutorials::Fun_xyzResponse :definition-)
      "int64 a
int64 b
int64 c
---
int64 s

")



(provide :beginner_tutorials/Fun_xyz "eaeadefa75cc1dc5d7db7aada9ebc9b2")



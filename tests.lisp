(in-package #:cl-user)
(defpackage #:jsonrpc/tests
  (:import-from #:rove)
  (:import-from #:jsonrpc/tests/request-response)
  (:import-from #:jsonrpc/tests/transport/tcp)
  (:import-from #:jsonrpc/tests/transport/stdio)
  (:import-from #:jsonrpc/tests/transport/websocket))

(defmethod asdf:perform :after ((op asdf:test-op) (system (eql (asdf:find-system :jsonrpc/tests))))
  (rove:run system))

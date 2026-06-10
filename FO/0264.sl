(set-info :author "Chentian Wu")
(set-info :source "examples/fol/raft.pyv:vote_msg_partial_func")

(require "theories/raft-c0991808.sl")

(define-model P0
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_0) true)
    ((@uc_node_0 @uc_term_0 @uc_node_1) true)
    ((@uc_node_1 @uc_term_0 @uc_node_0) true)
    ((@uc_node_1 @uc_term_0 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model P1
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_1)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N1
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_1)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_1) true)
    ((@uc_node_1 @uc_term_0 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N2
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_1)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_0) true)
    ((@uc_node_1 @uc_term_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N3
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0 @uc_term_1))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_1))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((@uc_term_1) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((@uc_term_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((@uc_term_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((@uc_term_1 @uc_term_0) true)
    ((@uc_term_1 @uc_term_1) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_1 @uc_node_1) true)
    ((@uc_node_1 @uc_term_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N4
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0 @uc_term_1))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((@uc_term_1) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((@uc_term_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((@uc_term_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((@uc_term_0 @uc_term_1) true)
    ((@uc_term_1 @uc_term_1) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_1 @uc_node_1) true)
    ((@uc_node_1 @uc_term_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N5
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0 @uc_term_1))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((@uc_term_1) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((@uc_term_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((@uc_term_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((@uc_term_0 @uc_term_1) true)
    ((@uc_term_1 @uc_term_1) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_1 @uc_node_0) true)
    ((@uc_node_1 @uc_term_1 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N6
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_1) true)
    ((@uc_node_1 @uc_term_0 @uc_node_0) true)
    ((@uc_node_1 @uc_term_0 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N7
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0 @uc_term_1))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((@uc_term_1) @uc_node_1)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((@uc_term_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((@uc_term_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((@uc_term_0 @uc_term_1) true)
    ((@uc_term_1 @uc_term_1) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_1 @uc_node_1) true)
    ((@uc_node_1 @uc_term_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N8
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((@uc_node_2) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_1)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((@uc_node_2 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_2) true)
    ((@uc_node_2 @uc_term_0 @uc_node_2) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N9
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0 @uc_term_1))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_1))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((@uc_term_1) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((@uc_term_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((@uc_term_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((@uc_term_1 @uc_term_0) true)
    ((@uc_term_1 @uc_term_1) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_1 @uc_node_1) true)
    ((@uc_node_1 @uc_term_0 @uc_node_0) true)
    ((@uc_node_1 @uc_term_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N10
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0 @uc_term_1))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_1)
    ((@uc_term_1) @uc_node_1)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((@uc_term_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((@uc_term_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((@uc_term_0 @uc_term_1) true)
    ((@uc_term_1 @uc_term_1) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_1 @uc_node_1) true)
    ((@uc_node_1 @uc_term_0 @uc_node_1) true)
    ((@uc_node_1 @uc_term_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N11
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_0)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_term_0 @uc_node_0) true)
    ((@uc_node_0 @uc_term_0 @uc_node_1) true)
    ((@uc_node_1 @uc_term_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N12
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0))
  (interp-fun commit_index (@uc_index_0))
  (interp-fun commit_log (@uc_log_0))
  (interp-fun commit_quorum (@uc_quorum_0))
  (interp-fun commit_term (@uc_term_0))
  (interp-fun commit_value (@uc_value_0))
  (interp-fun index_zero (@uc_index_0))
  (interp-fun log0 (@uc_log_0))
  (interp-fun none_index (@uc_option_index_0))
  (interp-fun none_term (@uc_option_term_0))
  (interp-fun term_zero (@uc_term_0))
  (interp-fun current_log (match (
    ((@uc_node_0) @uc_log_0)
    ((@uc_node_1) @uc_log_0)
    ((@uc_node_2) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun oi_index (match (
    ((@uc_option_index_0) @uc_index_0)
    ((_) @uc_index_0)
  )))
  (interp-fun ot_term (match (
    ((@uc_option_term_0) @uc_term_0)
    ((_) @uc_term_0)
  )))
  (interp-fun term_leader (match (
    ((@uc_term_0) @uc_node_2)
    ((_) @uc_node_0)
  )))
  (interp-fun term_log (match (
    ((@uc_term_0) @uc_log_0)
    ((_) @uc_log_0)
  )))
  (interp-fun value_at (match (
    ((@uc_log_0 @uc_index_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun voting_quorum (match (
    ((@uc_term_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun append_msg (match (
    ((_ _ _ _ _ _) false)
  )))
  (interp-fun append_reply_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun committed (match (
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((_ _) false)
  )))
  (interp-fun index_used (match (
    ((_ _) false)
  )))
  (interp-fun is_none_index (match (
    ((@uc_option_index_0) true)
    ((_) false)
  )))
  (interp-fun is_none_term (match (
    ((@uc_option_term_0) true)
    ((_) false)
  )))
  (interp-fun leader (match (
    ((_ _) false)
  )))
  (interp-fun left_term (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((@uc_node_2 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun request_vote_msg (match (
    ((_ _ _ _) false)
  )))
  (interp-fun started (match (
    ((_) false)
  )))
  (interp-fun term_at (match (
    ((_ _ _) false)
  )))
  (interp-fun term_le (match (
    ((@uc_term_0 @uc_term_0) true)
    ((_ _) false)
  )))
  (interp-fun valid (match (
    ((_) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_1 @uc_term_0 @uc_node_0) true)
    ((@uc_node_2 @uc_term_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (not (FO.Sem phi (FO.Asp N8))))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (not (FO.Sem phi (FO.Asp N10))))
(constraint (not (FO.Sem phi (FO.Asp N11))))
(constraint (not (FO.Sem phi (FO.Asp N12))))

(check-synth)

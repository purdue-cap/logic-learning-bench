(set-info :author "Chentian Wu")
(set-info :source "examples/fol/raft.pyv:c0")

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
    ((@uc_index_0 @uc_value_0) true)
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
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
    ((@uc_index_0 @uc_value_0) true)
    ((@uc_index_0 @uc_value_1) true)
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model P1
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N1
  (interp-sort index (@uc_index_0 @uc_index_1))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
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
    ((@uc_log_0 @uc_index_1) @uc_value_0)
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
    ((@uc_index_1 @uc_value_0) true)
    ((@uc_index_1 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun current_term (match (
    ((_ _) false)
  )))
  (interp-fun index_le (match (
    ((@uc_index_0 @uc_index_0) true)
    ((@uc_index_0 @uc_index_1) true)
    ((@uc_index_1 @uc_index_1) true)
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model P2
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
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
    ((@uc_log_0 @uc_index_0) @uc_value_1)
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
    ((@uc_index_0 @uc_value_0) true)
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model N2
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0 @uc_value_1 @uc_value_2))
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
    ((@uc_index_0 @uc_value_1) true)
    ((@uc_index_0 @uc_value_2) true)
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(define-model P3
  (interp-sort index (@uc_index_0))
  (interp-sort log (@uc_log_0))
  (interp-sort node (@uc_node_0))
  (interp-sort option_index (@uc_option_index_0))
  (interp-sort option_term (@uc_option_term_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort term (@uc_term_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
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
    ((@uc_index_0 @uc_value_1) true)
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
    ((_ _ _) false)
  )))
  (interp-fun voted (match (
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (with-model P3 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))

(check-synth)

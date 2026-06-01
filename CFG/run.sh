#!/usr/bin/env bash
# Standard invocation wrapper for the CFG benchmarks.
# Uses perl for portable timeout (macOS ships no coreutils `timeout`).
#
# Usage: ./run.sh <file.sl> [chc|sygus|solve] [timeout_sec]
#   chc    -> --dump-chc          (pre-saturation Horn program)
#   sygus  -> -v --dump-sygus     (post-saturation BV SyGuS, with log)
#   solve  -> -v                  (end-to-end synthesis, with log)
# Default mode: solve. Default timeout: 60s.
# stderr (saturation log) goes to /tmp/<basename>.<mode>.err

set -euo pipefail

FILE="${1:?usage: $0 <file.sl> [chc|sygus|solve] [timeout_sec]}"
MODE="${2:-solve}"
TO="${3:-60}"

BIN="$(cd "$(dirname "$0")"/../.. && pwd)/target/release/delis"
[[ -x "$BIN" ]] || { echo "delis binary not built; cd to repo root and run: cargo build --release" >&2; exit 2; }

base="$(basename "$FILE" .sl)"
errfile="/tmp/${base}.${MODE}.err"

case "$MODE" in
  chc)   flags=(--dump-chc) ;;
  sygus) flags=(-v --dump-sygus) ;;
  solve) flags=(-v) ;;
  *)     echo "unknown mode: $MODE" >&2; exit 2 ;;
esac

echo "# $BIN $FILE ${flags[*]}  (timeout ${TO}s, stderr -> $errfile)" >&2
perl -e 'alarm shift; exec @ARGV' "$TO" "$BIN" "$FILE" "${flags[@]}" 2>"$errfile"
status=$?

echo >&2
echo "# === saturation summary ===" >&2
grep -E "Saturation complete|CHC lowering|CHC BV emission|to_sygus completed" "$errfile" | tail -6 >&2 || true
exit $status

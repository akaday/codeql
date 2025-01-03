/**
 * @kind path-problem
 */

import csharp
import Common
import TestUtilities.ProvenancePathGraph::ShowProvenance<Taint::PathNode, Taint::PathGraph>

module Taint = TaintTracking::Global<FlowConfig>;

from Taint::PathNode source, Taint::PathNode sink, string s
where
  Taint::flowPath(source, sink) and
  s = sink.toString()
select sink, source, sink, s

/**
 * @name Afferent Coupling per Class (Python)
 * @description Computes afferent coupling for each Python class in source files (excluding tests).
 * @kind metric
 * @metricType count
 * @language python
 * @tags summary
 * @id python/afferent-coupling
 */

import python

from ClassMetrics cm
where
  cm.isSource() and
  not cm.getQualifiedName().matches("%test%")
select mr.getQualifiedName(), mr.getAfferentCoupling()
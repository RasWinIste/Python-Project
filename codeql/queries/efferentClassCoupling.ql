/**
 * @name Efferent Coupling per Class (Python)
 * @description Computes efferent coupling for each Python class in source files (excluding tests).
 * @kind metric
 * @metricType count
 * @language python
 * @tags summary
 * @id python/efferent-coupling
 */

import python

from ClassMetrics cm
where
  cm.isSource() and
  not cm.getQualifiedName().matches("%test%")
select mr.getQualifiedName(), mr.getEfferentCoupling()
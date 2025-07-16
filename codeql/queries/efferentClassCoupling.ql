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

from ClassMetrics c
where
  c.isSource() and
  not c.getQualifiedName().matches("%test%")
select c.getQualifiedName(), c.getEfferentCoupling()
/**
 * @name Afferent Coupling per Class
 * @description Computes afferent coupling for each Python class in source files (excluding tests).
 * @kind metric
 * @metricType count
 * @language python
 * @tags summary
 * @id python/afferent-coupling
 */

import python

from ClassMetrics cm, Class c
where
  cm.getClass() = c and
  cm.inSource() and
  not cm.getQualifiedName().matches("%test%")
select c.getLocation().getFile().getRelativePath(), cm.getAfferentCoupling()
/**
 * @name Efferent Coupling per Class
 * @description Computes efferent coupling for each Python class in source files (excluding tests).
 * @kind metric
 * @metricType count
 * @language python
 * @tags summary
 * @id python/efferent-coupling
 */

import python
import semmle.code.python.metrics.Coupling
import semmle.code.python.File

from Class c, ClassMetrics cm, File f
where
  cm.getClass() = c and
  f = c.getFile() and
  f.isSourceFile() and
  not f.getRelativePath().matches("%/test/%") and
  not f.getRelativePath().matches("test/%") and
  not f.getRelativePath().matches("%test%")
select f.getRelativePath(), cm.getEfferentCoupling()
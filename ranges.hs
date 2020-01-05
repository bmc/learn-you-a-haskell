-- Ranges aren't specified by steps. The step is inferred from the delta
-- between the first two elements.
--
-- e.g., "Give me all numbers starting at 3 by 3s until 30" is expressed as
-- "Give me 3, 6, and so on, up to 30":
byThrees = [3,6..30]
byTenths = [0.1, 0.2 .. 1.0]

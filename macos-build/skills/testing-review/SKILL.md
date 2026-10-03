---
name: testing-review
description: Reviews an application’s automated tests and produces an evidence-based report of opportunities to improve testing by adding, removing or modifying tests.
---

Produce a testing report using the following process:

- Analyse the implementation, automated tests, coverage reports, build configuration and relevant requirements documentation where available.
- Run existing tests using the project’s established commands where practical.
- Identify valuable improvements, including missing tests, weak assertions, untested boundaries and failure paths. Use coverage to guide investigation rather than pursue a percentage target.
- Evaluate candidates for consolidation, simplification or removal where evidence shows little additional protection relative to their cost. Do not classify a test as unnecessary merely because it is simple, overlaps another test, uses mocks or covers AI-written code.
- Consider existing protection across all test levels. Distinguish documented requirements from assumptions inferred from the implementation.

Begin the report with a findings index: a Markdown table containing **#**, **Finding**, **Type**, **Severity** and **Confidence**.

For each finding, include:

- **Finding:** A short, descriptive title matching the findings index.
- **Type:** Add / Remove / Modify.
- **Severity:** High / Medium / Low, reflecting the impact of leaving the issue unresolved.
- **Confidence:** High / Medium / Low, reflecting the strength of supporting evidence.
- **Reference:** Relevant implementation and existing test locations, including file paths, line numbers and symbols where useful. For example: `FooService.java:42 — FooService::doSomething()`.
- **Description:** Explain the proposed change and its justification, including the failure it would detect or the cost it would reduce. For removals, explain what protection would remain.

In each detailed finding, render Type, Severity and Confidence together on one line immediately after the title. Replace each placeholder with the appropriate value defined above:

**Type:** {type} · **Severity:** {severity} · **Confidence:** {confidence}

Order findings by severity.

Report only findings with a concrete rationale; do not fill a quota. If no worthwhile findings emerge, say so within the limits of the review.

Briefly record what was run and any material evidence limitations.

Stop after producing the report. Do not change implementation code or tests; implementation is a subsequent task.

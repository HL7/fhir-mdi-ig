Invariant: mdi-02
Description: "If status is “final”, then require content in section:cause-manner and section:jurisdiction."
* severity = #warning
* expression = "status = 'final' implies section:cause-manner.exists() and section:jurisdiction.extists()"


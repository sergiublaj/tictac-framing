(clear)
(printout t "---NEW-------------------------------" crlf)
(load "headers.clp")
(load "MAIN-rules.clp")
(load "PERCEPT-MANAGER.clp")
(load "AddMomentBelifsGetStartTime.clp")
(load "./agenti/DRIVER-AGENT1.clp") ; ./agenti/DRIVER-AGENT2.clp, ./agenti/DRIVER-AGENT3.clp
(load "TellDeleteMomentBelifsGetEndTime.clp")
(load "initials.clp")
(load "maneuverValidityASK.clp")
(reset)
(run ?*totalNrRules*)
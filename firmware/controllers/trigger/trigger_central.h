/*
 * @file	trigger_central.h
 *
 * @date Feb 23, 2014
 * @author Andrey Belomutskiy, (c) 2012-2014
 */

#ifndef TRIGGER_CENTRAL_H_
#define TRIGGER_CENTRAL_H_

#include "rusefi_enums.h"
#include "listener_array.h"

typedef void (*ShaftPositionListener)(trigger_event_e signal, int index, void *arg);

#ifdef __cplusplus
#include "ec2.h"

#define HW_EVENT_TYPES 4

class TriggerCentral {
public:
	TriggerCentral();
	void addEventListener(ShaftPositionListener handler, const char *name, void *arg);
	void handleShaftSignal(configuration_s *configuration, trigger_event_e signal, uint64_t nowUs);
	TriggerState triggerState;
private:
	IntListenerArray triggerListeneres;
	int hwEventCounters[HW_EVENT_TYPES];
};
#endif

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */
void addTriggerEventListener(ShaftPositionListener handler, const char *name, void *arg);
uint64_t getCrankEventCounter(void);
uint64_t getStartOfRevolutionIndex(void);
int isSignalDecoderError(void);
void hwHandleShaftSignal(trigger_event_e signal);
void initTriggerCentral(void);
void printAllCallbacksHistogram(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* TRIGGER_CENTRAL_H_ */

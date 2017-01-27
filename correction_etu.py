# -*- coding: utf-8 -*-

# Note: this solution goes further than the subject: namely it introduces
# the "TimingDiagram" class

import matplotlib.pyplot as plt

# A class for representing wires that hold a value
# and a list of logical gates that must be notified 
# when the value of the wire changes
class Wire(object):
    def __init__(self, state=False):
        # Value of the wire
        self.state = state
        # List of gates to notify, initially empty
        self.downStream = []
    
    # Add a logical gate to the list of gates that depend on this wire
    def addDownStream(self, gate):
        self.downStream.append(gate)
    
    # Set the value of the wire
    def setState(self, state):
        self.state = state
        for gate in self.downStream:
            gate.update()
    
    # Get the value of the wire
    def getState(self):
        return self.state


class AndGate(object):
    def __init__(self, input_a, input_b, output):
        # Store the wire for the first input in an attribute
        self.inputa = input_a
        # Add myself as a gate that depends on this wire
        input_a.addDownStream(self)
        # Same thing for the second input
        self.inputb = input_b
        input_b.addDownStream(self)
        # Store the wire for my input in an attribute
        self.output = output
        # Compute my output from the initial values of the input wires
        self.update()
    
    def update(self):
        result = self.inputa.getState() \
                 and self.inputb.getState()
        self.output.setState(result)


def test1():
    a = Wire(False)
    b = Wire(False)
    c = Wire(None)
    AndGate(a, b, c)
    # some print output here to see C value
    a.setState(True)
    b.setState(True)
    # some print output """""""""""""""""""

test1()

%module osc
%{
#include "ofxOscArg.h"
#include "ofxOscBundle.h"
#include "ofxOscMessage.h"
#include "ofxOscParameterSync.h"
#include "ofxOscReceiver.h"
#include "ofxOscSender.h"
%}

%include <std_string.i>

%ignore operator <<;

#define OF_DEPRECATED_MSG(m, f)

%rename("%(strip:[ofxOsc])s", %$isclass) "";
%rename("%(regex:/ofxOsc(.*)/\\l\\1/)s", %$isfunction) "";
%rename("%(strip:[OFXOSC_])s", %$isconstant) "";
%rename("%(strip:[OFXOSC_])s", %$isenumitem) "";

%ignore osc::OscPacketListener; 
namespace osc {
	class OscPacketListener {};
}

%include "ofxOscArg.h"
%include "ofxOscBundle.h"
%include "ofxOscMessage.h"
%include "ofxOscParameterSync.h"
%include "ofxOscReceiver.h"
%include "ofxOscSender.h"

%extend ofxOscMessage {
	const char* __str__() {
		static char str[255];
		std::stringstream stream;
		stream << (*$self);
		std::strcpy(str, stream.str().c_str());
		return &str[0];
	}
};

%extend ofxOscBundle {
	const char* __str__() {
		static char str[255];
		std::stringstream stream;
		stream << (*$self);
		std::strcpy(str, stream.str().c_str());
		return &str[0];
	}
}

%extend ofxOscReceiver {
	const char* __str__() {
		static char str[255];
		std::stringstream stream;
		stream << (*$self);
		std::strcpy(str, stream.str().c_str());
		return &str[0];
	}
}

%extend ofxOscSender {
	const char* __str__() {
		static char str[255];
		std::stringstream stream;
		stream << (*$self);
		std::strcpy(str, stream.str().c_str());
		return &str[0];
	}
}
